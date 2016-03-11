package com;


import org.apache.commons.lang3.ObjectUtils;
import org.hibernate.*;

import javax.security.auth.login.Configuration;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

/**
 * Created by Administrator on 2014/7/23.
 */
public class hibernateOperation {
    private static final SessionFactory ourSessionFactory;
    private static final ServiceRegistry serviceRegistry;
    static {
        try {
            org.hibernate.cfg.Configuration configuration = new org.hibernate.cfg.Configuration();
            configuration.configure();

            serviceRegistry = new ServiceRegistryBuilder().applySettings(configuration.getProperties()).buildServiceRegistry();
            ourSessionFactory = configuration.buildSessionFactory(serviceRegistry);
        } catch (Throwable ex) {
            throw new ExceptionInInitializerError(ex);
        }
    }

    public static Session getSession() throws HibernateException {
        return ourSessionFactory.openSession();
    }
    public void insertUser(UserEntity userEntity)
    {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        session.save(userEntity);
        transaction.commit();
    }

    public static List denglu(String userName)
    {
        Session session = getSession();
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
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        String sql = "select i from InforEntity as i";
        Query query = session.createQuery(sql);
        List list = query.list();
        return list;
    }
}
