package com.personal;

import com.SalehomeEntity;
import com.UserEntity;
import com.hbop.HibernateOp;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.hibernate.cfg.beanvalidation.HibernateTraversableResolver;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by tingliang7t on 2016/3/18.
 */
public class MySale extends ActionSupport {
    private int user_id;
    private HibernateOp hp;

    public void setUser_id(int user_id)
    {
        this.user_id = user_id;
    }

    public int getUser_id()
    {
        return this.user_id;
    }



    public String execute() throws Exception
    {
        String sql = "select * from salehome where userID="+user_id;
        hp = new HibernateOp();
        hp.init();

        List ret = hp.query(sql, SalehomeEntity.class);

        sql = "select * from user where ID="+user_id;
        List user = hp.query(sql, UserEntity.class);

        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("mySaletHomeInfo", ret);
        request.setAttribute("userInfo", user);

        hp.close();

        return "success";

    }


}
