
package com.admin;

import com.RenthomeEntity;
import com.SalehomeEntity;
import com.NewsEntity;
import com.UserEntity;
import com.opensymphony.xwork2.ActionSupport;
import com.hbop.HibernateOp;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by tingliang7t on 2016/3/17.
 */
public class Admin extends ActionSupport {

    private HibernateOp hp;
    private char index;

    public void setIndex(char index)
    {
        this.index = index;
    }

    public char getIndex()
    {
        return this.index;
    }

    public String execute() throws Exception
    {
        hp = new HibernateOp();
        int ret = 0;

        switch (index){
            case '0':
            case '1':
                ret =  showInfo("select * from news",
                             "admin"+index+"Info",
                             NewsEntity.class
                            );

                break;

            case '2':
                 ret = showInfo("select * from news where top=1",
                             "admin2Info",
                             NewsEntity.class
                            );
                break;

            case '3':
                // add news here
                break;

            case '4':
            case '5':
                ret = showInfo("select * from renthome",
                        "admin"+index+"RentHomeInfo",
                        RenthomeEntity.class
                );

                if (ret==1)
                    break;

                ret = showInfo("select * from salehome",
                        "admin"+index+"SaleHomeInfo",
                        SalehomeEntity.class
                );

                break;

            case '6':
                ret = showInfo("select * from user",
                                "admin"+index+"UserInfo",
                                UserEntity.class);
                break;

            default:
                break;
        }

        if (ret==1) {
            return "failed";
        }else {
            return "admin"+index;
        }


    }


    private int showInfo(String sql, String attName,  Class aclass)
    {

        hp.init();
        List result = hp.query(sql, aclass);

        if (result.isEmpty()) {
            hp.close();
            return 1;
        }
        else{
            HttpServletRequest request = ServletActionContext.getRequest();
            request.setAttribute(attName, result);
            hp.close();
            return 0;
        }
    }

//    private String adminHome()
//    {
//        hp.init();
//        String sql = "select * from rentHome";
//        List result = hp.query(sql, RenthomeEntity.class);
//
//        sql = "select * from saleHome";
//        List tmp = hp.query(sql, SalehomeEntity.class);
//
//        for (int i=0; i<tmp.size(); i++){
//            result.add(tmp.get(i));
//        }
//
//        if (result.isEmpty()) {
//            hp.close();
//            return "failed";
//        }else {
//            HttpServletRequest request = ServletActionContext.getRequest();
//            request.setAttribute("adminHomeInfoAll", result);
//
//            hp.close();
//
//            if ("")
//
//        }

}