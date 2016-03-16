package com;

import com.opensymphony.xwork2.ActionSupport;

import java.io.UnsupportedEncodingException;

import java.sql.Date;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;

/**
 * Created by leyang on 2016/3/15.
 */


public class NewsRelease extends ActionSupport {


    private String Title;

    public void setTitle(String title)throws UnsupportedEncodingException
    {
        Title =  new String(title.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getTitle() {
        return Title;
    }


    private String Desc;

    public void setDesc(String desc)throws UnsupportedEncodingException
    {
        Desc =new String(desc.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getDesc() {
        return Desc;
    }


    private String author;
    private String summary;

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String redir()
    {
        return "yes";
    }
    public String execute() throws Exception {
        NewsEntity newsEntity = new NewsEntity();
        newsEntity.setTitle(Title);
        newsEntity.setDesc(Desc);
        Timestamp time = new Timestamp(new java.util.Date().getTime());
        newsEntity.setTime(time);
        newsEntity.setAuthor(author);
        newsEntity.setSummary(summary);
        newsEntity.setTop(0);
        newsEntity.setClick(0);
        hibernateOperation.insertNews(newsEntity);
        return "yes";
    }
}
