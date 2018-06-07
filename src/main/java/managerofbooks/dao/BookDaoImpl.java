package managerofbooks.dao;

import managerofbooks.model.Book;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BookDaoImpl implements BookDao {
    private SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addBook(Book book) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.persist(book);
    }

    @Override
    public void updateBook(Book book) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.update(book);
    }

    @Override
    public void removeBook(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Book book = (Book) currentSession.load(Book.class, id);
        if (book != null) currentSession.delete(book);
    }

    @Override
    public Book getBookById(int id) {
        Session currentSession = sessionFactory.getCurrentSession();
        Book book = (Book) currentSession.load(Book.class, id);
        return book;
    }

    @Override
    public List<Book> listBooks() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query query = currentSession.createQuery("from Book");
        List list = query.list();
        return list;
    }
}
