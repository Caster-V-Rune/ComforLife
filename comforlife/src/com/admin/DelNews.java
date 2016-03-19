package com.admin;

import com.NewsEntity;
import com.hbop.HibernateOp;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by tingliang7t on 2016/3/18.
 */
public class DelNews extends ActionSupport {
    private int id;
    private HibernateOp hp;

    public void setId(int id)
    {
        this.id = id;
    }

    public int getId()
    {
        return this.id;
    }

    public String execute() throws Exception
    {
        hp = new HibernateOp();
        hp.init();

        NewsEntity news = (NewsEntity)hp.getSession().get(NewsEntity.class, id);
        hp.getSession().delete(news);
        hp.close();

        return "success";
    }
}
