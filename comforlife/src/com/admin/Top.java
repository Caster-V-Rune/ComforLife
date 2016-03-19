package com.admin;

import com.NewsEntity;
import com.hbop.HibernateOp;
import com.opensymphony.xwork2.ActionSupport;
import com.sun.org.apache.xalan.internal.xsltc.dom.SAXImpl;
import org.hibernate.*;

import java.util.List;

/**
 * Created by tingliang7t on 2016/3/18.
 */
public class Top extends ActionSupport {
    private int news_id;
    private int index;
    private int set;
    private HibernateOp hp;

    private int id;
    private int flag;

    public int getId()
    {
        return this.id;
    }

    public void setId(int id)
    {
        this.id = id;
    }

    public int getFlag()
    {
        return this.flag;
    }

    public void setFlag(int flag)
    {
        this.flag = flag;
    }


    public String execute()
    {
        hp = new HibernateOp();
        hp.init();
        news_id = id;
        set = flag;

        List ret = hp.query("select * from news where top=1", NewsEntity.class);

        if (set==0 || ret.size()==0){
            ret = hp.query("select * from news where ID="+news_id, NewsEntity.class);
            if (ret.size()==0){
                hp.close();
                return "failed";
            }

            NewsEntity news =(NewsEntity)ret.get(0);
            news.setTop(set);
            hp.getSession().save(news);
        }else{
            NewsEntity curTopNews = (NewsEntity)ret.get(0);
            curTopNews.setTop(0);
            hp.getSession().save(curTopNews);

            ret = hp.query("select * from news where ID="+news_id, NewsEntity.class);
            if (ret.size()==0){
                hp.close();
                return "failed";
            }

            NewsEntity nextTopNews = (NewsEntity)ret.get(0);
            nextTopNews.setTop(1);
            hp.getSession().save(nextTopNews);
        }



        hp.close();
        return "success";
    }

//    public String execute() throws Exception
//    {
//        hp = new HibernateOp();
//        hp.init();
//
//        if (set==0){
//            hp.update("update news set top=0 where ID="+news_id);
//        }else{
//            List ret = hp.query("select * from users where top=1");
//            if (ret.size()==0){
//                hp.update("update news set top=1 where ID="+news_id);
//            }else{
//                hp.update("update news set top=0 where ID="+((NewsEntity)ret.get(0)).getId());
//                hp.update("update news set top=1 where ID="+news_id);
//            }
//
//        }
//
//        hp.close();
//        return "success";
//    }

}
