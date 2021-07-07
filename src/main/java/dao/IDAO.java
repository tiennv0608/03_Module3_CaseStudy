package dao;

import java.sql.SQLException;
import java.util.List;

public interface IDAO<T> {
    List<T> findAll() throws SQLException, ClassNotFoundException;

    void create(T t);

    void update(T t);

    void delete(int id);

    T findById(int id);
}
