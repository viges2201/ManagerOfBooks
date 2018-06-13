package managerofbooks.controller;

import managerofbooks.model.Book;
import managerofbooks.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {
    private BookService bookService;
    private static int id = 0;

    @Autowired(required = true)
    @Qualifier(value = "bookService")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    /**
     * Создание нового пользователя.
     * <p>
     * Если пользователя нет (id == 0), создаём нового. Если есть, обновляем того, что есть.
     *
     * @param book
     * @return редирект в root
     */
    @RequestMapping(value = "book/add", method = RequestMethod.POST)
    public String addUser(@ModelAttribute("book") Book book) {
        if (book.getId() == 0) this.bookService.addBook(book);
        else this.bookService.updateBook(book);
        return "redirect:/";
    }

    /**
     * Удаление пользователя по ID.
     *
     * @param id
     * @return редирект в root
     */
    @RequestMapping("/remove/{id}")
    public String removeUser(@PathVariable("id") int id) {
        this.bookService.removeBook(id);
        return "redirect:/";
    }

    /**
     * Изменение данных пользователя.
     * <p>
     * Метод получает id и экземпляр модели.
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/edit/{id}")
    public String editUser(@PathVariable("id") int id, Model model) {
        BookController.id = this.bookService.getBookById(id).getId();
        model.addAttribute("listBooks", this.bookService.listBooks());
        return "redirect:/";
    }

   /* @RequestMapping("bookdata{id}")
    public String userData(@PathVariable("id") int id, Model model) {
        model.addAttribute("book", this.bookService.getBookById(id));
        return "redirect:/";
    }*/

    /**
     * Метод пейджинга.
     * <p>
     * Он срабатывает при запросе "/". Далее происходит следующее:
     * В метод передаётся номер страницы и поисковый запрос в String, если он есть.
     * Далее — если запрос есть — список наполняется только объектами User, имена которых содержат строку запроса.
     * Если его нет — копируется основной список.
     * <p>
     * Список отправляется в модель, которую и возвращает метод.
     *
     * @param page  — номер страницы.
     * @param title — поисковый запрос.
     * @return модель, аттрибуты которой участвуют при наполнении списка.
     */
    @RequestMapping(value = "/")
    public ModelAndView listOfUsers(@RequestParam(required = false) Integer page, @RequestParam(required = false) String title) {
        ModelAndView modelAndView = new ModelAndView("index");
        if (id != 0) {
            modelAndView.addObject("book", this.bookService.getBookById(id));
            id = 0;
        } else {
            modelAndView.addObject("book", new Book());
        }

        List<Book> books = null;
        if (title == null) {
            books = this.bookService.listBooks();
        } else {
            List<Book> tempBooks = this.bookService.listBooks();
            books = new ArrayList<Book>();
            for (Book tempBook : tempBooks) {
                if (tempBook.getTitle().toLowerCase().contains(title.toLowerCase())) {
                    System.out.println("filter: " + tempBook);
                    books.add(tempBook);
                }
            }
        }
        PagedListHolder<Book> pagedListHolder = new PagedListHolder<Book>(books);
        pagedListHolder.setPageSize(10);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            page = 1;
        }

        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            modelAndView.addObject("listBooks", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            modelAndView.addObject("listBooks", pagedListHolder.getPageList());
        }
        return modelAndView;
    }
}
