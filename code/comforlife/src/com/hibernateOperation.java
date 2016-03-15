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
    public static void insertUser(UserEntity userEntity)
    {
        try {
            Session session = getSession();
            Transaction transaction = session.beginTransaction();
            session.save(userEntity);
            transaction.commit();
            session.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }


    }

    public static void updateUser(int ID,String password,String name,String phone)
    {
        try {
            Session session = getSession();
            Transaction transaction = session.beginTransaction();
            UserEntity user = (UserEntity)session.get(UserEntity.class,ID);
            user.setPassword(password);
            user.setName(name);
            user.setPhone(phone);
            session.save(user);
            transaction.commit();
            session.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }


    }

    public static List denglu(String userName)
    {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from UserEntity as User where username = "+userName;
        Query query = session.createQuery(hql);
        List list = query.list();
        session.close();
        if (list.isEmpty())
        {
            return null;
        }
        else
        {
            return list;
        }
    }
    public static List searchRent(String keyword,int rentPay,int room,int rentType)
    {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from RenthomeEntity as home where 1=1 ";
        if (rentPay != 0)
        {
            hql= hql+"and home.rentNum > "+500*(rentPay-1)+"and home.rentNum < "+500*rentPay;
        }
        if (room != 0)
        {
            hql = hql + "and home.room = "+room;
        }
        if (rentType != 0)
        {
            hql = hql + "and home.rentType = "+rentType;
        }
        if (keyword != "")
        {
            hql = hql + "and home.title like '%"+keyword+"%'";
        }
        Query query = session.createQuery(hql);
        List list = query.list();
        session.close();
        return list;
    }
    public static List searchSale(String keyword,int salePay,int room,int firSec)
    {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from SalehomeEntity as home where home.check=1";
        if (salePay != 0)
        {
            hql= hql+"and home.unitPrice > "+500*(salePay-1)+"and home.unitPrice < "+500*salePay;
        }
        if (room != 0)
        {
            hql = hql + "and home.room = "+room;
        }
        if (keyword != "")
        {
            hql = hql + "and home.title like '%"+keyword+"%'";

        }
        if (firSec ==1)
        {
            hql = hql + "and home.fs = "+firSec;
        }
        Query query = session.createQuery(hql);
        List list = query.list();
        session.close();
        return list;
    }
    public static List recommandList(String table)
    {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from "+table+" as home  where home.check=1 order by home.attention desc";
        Query query = session.createQuery(hql);
        query.setMaxResults(3);
        List list = query.list();
        session.close();
        return list;
    }
    public static List sortAccordingTime(int num,String table)
    {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from "+table+" as home  where home.check=1 order by home.checkInTime desc";
        Query query = session.createQuery(hql);
        query.setMaxResults(num);
        List list = query.list();
        session.close();
        return list;
    }
    public static List newsAccordingTime(int num)
    {
        Session session = getSession();
        Transaction transaction = session.beginTransaction();
        String hql = "from NewsEntity as news  where news.top=1 order by news.time desc ";
        Query query = session.createQuery(hql);
        query.setMaxResults(num);
        List list = query.list();
        hql = "from NewsEntity as news  where news.top <> 1 order by news.time desc ";
        query = session.createQuery(hql);
        list.addAll(query.list());
        session.close();
        return list;
    }

    public static void insertRentHouse(RenthomeEntity renthomeEntity)
    {
        try {
            Session session = getSession();
            Transaction transaction = session.beginTransaction();
            session.save(renthomeEntity);
            transaction.commit();
            session.close();
        }catch (Exception e)
        {
            e.printStackTrace();
        }


    }

}
