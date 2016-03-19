package com.admin;

import com.RenthomeEntity;
import com.SalehomeEntity;
import com.hbop.HibernateOp;
import com.opensymphony.xwork2.ActionSupport;

/**
 * Created by tingliang7t on 2016/3/18.
 */
public class Check extends ActionSupport {
    private int id;
    private int type;
    private HibernateOp hp;

    public void setId(int id)
    {
        this.id = id;
    }

    public int getId()
    {
        return this.id;
    }

    public void setType(int type)
    {
        this.type = type;
    }

    public int getType()
    {
        return this.type;
    }


    public String execute() throws Exception
    {
        hp = new HibernateOp();
        hp.init();

        if (type==0){
            RenthomeEntity r =(RenthomeEntity)hp.getSession().get(RenthomeEntity.class, id);
            r.setCheckIn(1);
            hp.getSession().save(r);
        }else if (type==1){
            SalehomeEntity s =(SalehomeEntity)hp.getSession().get(SalehomeEntity.class, id);
            s.setCheckIn(1);
            hp.getSession().save(s);
        }

        hp.close();
        return "success";
    }
}
