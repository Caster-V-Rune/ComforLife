package com;

import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Administrator on 2016/3/16.
 */
public class newsList extends ActionSupport {
    private List newsList;

    @Override
    public String execute() throws Exception {
        newsList = hibernateOperation.newsListAll();
        return "yes";
    }

    public List getNewsList() {
        return newsList;
    }

    public void setNewsList(List newsList) {
        this.newsList = newsList;
    }
}
