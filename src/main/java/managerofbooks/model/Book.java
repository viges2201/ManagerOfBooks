package managerofbooks.model;

import javax.persistence.*;

@Entity
@Table(name = "book")
public class Book {
    //id – идентификатор книги в БД;
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    //title – название книги. Можно использовать тип VARCHAR(100);
    @Column(name = "title")
    private String title;

    //description – краткое описание о чем книга. Можно использовать тип VARCHAR(255);
    @Column(name = "description")
    private String description;

    //author – фамилия и имя автора. Можно использовать тип VARCHAR(100);
    @Column(name = "author")
    private String author;

    //isbn – ISBN книги. Можно использовать тип VARCHAR(20);
    @Column(name = "isbn")
    private String isbn;

    //printYear – в каком году напечатана книга (INT);
    @Column(name = "printYear")
    private int printYear;

    //readAlready – читал ли кто-то эту книгу. Это булево поле.
    @Column(name = "readAlready")
    private boolean readAlready;

    public Book() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getPrintYear() {
        return printYear;
    }

    public void setPrintYear(int printYear) {
        this.printYear = printYear;
    }

    public boolean isReadAlready() {
        return readAlready;
    }

    public void setReadAlready(boolean readAlready) {
        this.readAlready = readAlready;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Book book = (Book) o;

        if (id != book.id) return false;
        return title != null ? title.equals(book.title) : book.title == null;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Book{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", author='" + author + '\'' +
                '}';
    }
}
