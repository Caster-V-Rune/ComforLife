package com.hbop;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

import java.util.List;

/**
 * Created by tingliang7t on 2016/3/16.
 */
public class HibernateOp {

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

     public void close()
    {
        transaction.commit();
        session.close();
        sessionFactory.close();
    }

    public List query(String sql, Class aclass)
    {
        List result = session.createSQLQuery(sql).addEntity(aclass).list();
        return result;
    }

    public List query(String sql)
    {
        List result = session.createSQLQuery(sql).list();
        return result;
    }

    public void update(String sql)
    {
        session.createSQLQuery(sql).executeUpdate();
    }
}
