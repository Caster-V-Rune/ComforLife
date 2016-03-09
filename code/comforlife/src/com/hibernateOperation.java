package com;


import org.apache.commons.lang3.ObjectUtils;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.security.auth.login.Configuration;
import java.util.List;
import org.hibernate.Session;

/**
 * Created by Administrator on 2014/7/23.
 */
public class hibernateOperation {
    public void insertUser(UserEntity userEntity)
    {
        Session session = Main.getSession();
        Transaction transaction = session.beginTransaction();
        session.save(userEntity);
        transaction.commit();
    }

    public static List denglu(String userName)
    {
        Session session = Main.getSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from UserEntity as User where username = "+userName;
        Query query = session.createQuery(hql);
        List list = query.list();
        if (list.isEmpty())
        {
            return null;
        }
        else
        {
            return list;
        }
    }
    public  List listInfor()
    {
        Session session = Main.getSession();
        Transaction transaction = session.beginTransaction();
        String sql = "select i from InforEntity as i";
        Query query = session.createQuery(sql);
        List list = query.list();
        return list;
    }
}
