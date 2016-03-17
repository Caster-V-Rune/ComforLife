package com;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by leyang on 2016/3/16.
 */
public class news extends ActionSupport {
    private String Title;

    public String getTitle() {
        return Title;
    }

    public void setTitle(String title) {
        Title = title;
    }

    private String Desc;

    public String getDesc() {
        return Desc;
    }

    public void setDesc(String desc) {
        Desc = desc;
    }
    private String ID;

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getID() {
        return ID;
    }

    private String Author;

    public void setAuthor(String author) {
        Author = author;
    }

    public String getAuthor() {
        return Author;
    }

    public String Time;

    public String getTime() {
        return Time;
    }

    public void setTime(String time) {
        Time = time;
    }

    public String execute() throws Exception {
        NewsEntity newsEntity = hibernateOperation.getNews(ID);
        Title = newsEntity.getTitle();
        Author= newsEntity.getAuthor();
        ID=newsEntity.getId()+"";
        Time=newsEntity.getTime()+"";
        Desc=newsEntity.getDescri();
        return "yes";


    }




}
