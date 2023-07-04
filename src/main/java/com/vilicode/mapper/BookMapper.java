package com.vilicode.mapper;

import com.vilicode.bean.Book;

import java.util.List;

public interface BookMapper {
    public void addBook(Book book);
    public void removeBook(int bid);
    public void modifyBook(Book book);
    public List<Book> queryBooks(int pageIndex,int pageSize);
    public int queryCountOfBooks();
    public List<Book> queryBooksByKeyword(String keyword, int pageIndex,int pageSize);
    public int queryCountOfBooksByKeyword(String keyword);
    public Book queryBookById(int bid);
    public Book queryBookByIsbn(String bisbn);
    public void deleteBookByBtid(int btid);
}

