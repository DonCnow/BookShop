package com.vilicode.mapper;

import com.vilicode.bean.Book;
import com.vilicode.bean.BookType;

import java.util.List;

public interface BookTypeMapper {
    public List<BookType> queryBookTypes();
    public List<Book> queryBooksByBtid(int btid, int pageIndex,int pageSize);
    public int queryCountOfBooksByTypeID(int btid);
    public String queryBookTypeNameByBookTypeID(int btid);
    public void addBookType(String btname);
    public void updateBookType(int btid,String btname);
    public void deleteBookType(int btid);
    public int identifyBtname(String btname);
}
