package com;

import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by leyang on 2016/3/15.
 */


public class NewsRelease extends ActionSupport {


    private String Title;

    public void setTitle(String title) {
        Title = title;
    }

    public String getTitle() {
        return Title;
    }


    private String Desc;

    public void setDesc(String desc) {
        Desc = desc;
    }

    public String getDesc() {
        return Desc;
    }

    public String execute() throws Exception {
        NewsEntity newsEntity = new NewsEntity();
        newsEntity.setTitle(Title);
        newsEntity.setDesc(Desc);
        return "yes";
    }
}
