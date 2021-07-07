package dao;

import java.util.List;

public interface IDAO<T> {
    List<T> findAll();

    void create(T t);

    void update(T t);

    void delete(int id);

    T findById(int id);
}
