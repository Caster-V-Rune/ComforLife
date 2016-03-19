package com.personal;

import com.NewsEntity;
import com.UserEntity;
import com.SalehomeEntity;
import com.RenthomeEntity;
import com.opensymphony.xwork2.ActionSupport;
import com.hbop.HibernateOp;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;
import java.lang.String;
/**
 * Created by tingliang7t on 2016/3/16.
 */
public class Person extends ActionSupport {
    private String user_id;
    private HibernateOp hp;
    public String getUser_id()
    {
        return this.user_id;
    }

    public void setUser_id(String user_id)
    {
        this.user_id = user_id;
    }


    public String execute() throws Exception
    {
        user_id = new String(user_id.getBytes("ISO-8859-1"),"UTF-8");
        hp = new HibernateOp();
        hp.init();

        String tempsql;

        String saleHomeIdSql = "select homeID from saleattention where userID="+user_id;
        List<Integer> saleHomeId = hp.query(saleHomeIdSql);
        List saleHomeInfo = new ArrayList();
        List saleHomePic = new ArrayList();
        if(!saleHomeId.isEmpty()) {
            for (int e : saleHomeId) {
                tempsql = "select * from salehome where homeID=" + e;
                saleHomeInfo.add(hp.query(tempsql, SalehomeEntity.class).get(0));
            }
        }


        String rentHomeIdSql = "select homeID from rentattention where userID="+user_id;
        List<Integer> rentHomeId = hp.query(rentHomeIdSql);
        List rentHomeInfo = new ArrayList();
        if(!rentHomeId.isEmpty()) {
            for (int e : rentHomeId) {
                tempsql = "select * from renthome where homeID=" + e;
                rentHomeInfo.add(hp.query(tempsql, RenthomeEntity.class).get(0));
            }
        }

        String personSql = "select * from user where ID="+user_id;
        List personalInfo = hp.query(personSql, UserEntity.class);
        List news = hp.query("select * from news", NewsEntity.class);


        if(news.isEmpty()) {
            return "failed";
        }else {
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setAttribute("saleHomeId", saleHomeId);
            request.setAttribute("saleHomeInfo", saleHomeInfo);
            request.setAttribute("rentHomeId", rentHomeId);
            request.setAttribute("rentHomeInfo", rentHomeInfo);
            request.setAttribute("news", news);
            request.setAttribute("personalInfo", personalInfo );

            hp.close();

            return "success";
        }
    }
}
