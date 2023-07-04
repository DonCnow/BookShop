package com.vilicode.mapper;

import com.vilicode.bean.Book;

import java.util.List;

public interface RecommendMapper {
    public List<Book> queryBookByRecommendType(int rtype,int pageIndex,int pageSize);
    public int queryRecommendCountOfBooksByTypeID(int rtype);
    public int queryBookByRtypeAndBid(int rtype,int bid);
    public void addRecommendBook(int bid,int rtype);
    public void removeRecommendBook(int bid,int rtype);
    public void removeRecommend(int bid);
}
