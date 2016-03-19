package com.admin;

import com.UserEntity;
import com.hbop.HibernateOp;
import sun.security.ssl.HandshakeInStream;

/**
 * Created by tingliang7t on 2016/3/18.
 */
public class DelUser {
    private int id;
    public HibernateOp hp;

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

        UserEntity user = (UserEntity)hp.getSession().get(UserEntity.class, id);

        try {
            hp.getSession().delete(user);
        }catch (Exception e){
            e.printStackTrace();
            hp.getSession().getTransaction().rollback();
        }

        hp.close();
        return "success";
    }

}
