package com.homeinfo;


import com.UserEntity;
import com.RenthomeEntity;
import com.SalehomeEntity;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by tingliang7t on 2016/3/14.
 */
public class show extends ActionSupport {

    private String home_id;
    private String isrent;
    private List list;

    public String getHome_id()
    {
        return home_id;
    }

    public void setHome_id(String home_id)
    {
        this.home_id = home_id;
    }

    public String getIsrent()
    {
        return this.isrent;
    }

    public void setIsrent(String isrent)
    {
        this.isrent = isrent;
    }

    public List getList()
    {
        return this.list;
    }

    public void setList(List list)
    {
        this.list = list;
    }

    private SessionFactory sessionFactory;
    private org.hibernate.Session  session;
    private Transaction transaction;

    public void init()
    {
        Configuration configuration = new Configuration().configure();
        ServiceRegistry serviceRegistry =
                new ServiceRegistryBuilder().applySettings(configuration.getProperties())
                        .buildServiceRegistry();

        sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        session =  sessionFactory.openSession();
        transaction = session.beginTransaction();
    }


    public List query()
    {
        String hql;
        List list;
        if (isrent.compareTo("1")==0){
             hql = "SELECT * from renthome where homeID="+home_id;
             list = session.createSQLQuery(hql).addEntity(RenthomeEntity.class).list();
             int user_id = ((RenthomeEntity)list.get(0)).getUserId();
             hql = "SELECT * from user where ID="+user_id;
             List tmp = session.createSQLQuery(hql).addEntity(UserEntity.class).list();
             list.add(tmp.get(0));

        }else{
             hql = "SELECT * from salehome where homeID="+home_id;
             list = session.createSQLQuery(hql).addEntity(SalehomeEntity.class).list();
             int user_id = ((SalehomeEntity)list.get(0)).getUserId();
             hql = "SELECT * from user where ID="+user_id;
             List tmp = session.createSQLQuery(hql).addEntity(UserEntity.class).list();
             list.add(tmp.get(0));
        }



        return list;
    }


    public void close()
    {
        transaction.commit();
        session.close();
        sessionFactory.close();
    }

    public List getInfo()
    {
        init();
        List query = query();
        close();
        return query;
    }

    public String execute() throws Exception
    {
        list = getInfo();
        //ActionContext context = ActionContext.getContext();
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("homeinfo", list);


        if (list.isEmpty())
            return "failed";
        else if (isrent.compareTo("1")==0) {
            return "rent";
        }
        else
            return "sale";
    }

}
