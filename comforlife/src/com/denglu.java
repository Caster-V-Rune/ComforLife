package com;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2016/3/9.
 */
public class denglu extends ActionSupport {


    private String username;
    private String password;
    private String chenggong;

    public String getChenggong() {
        return chenggong;
    }

    public void setChenggong(String chenggong) {
        this.chenggong = chenggong;
    }

    public String execute()
    {
        try {
           List users = hibernateOperation.denglu(username);
            //List users = null;
            if (users == null) {
                chenggong = "0";
                return "no";

            } else {
                UserEntity user = (UserEntity) users.get(0);
                password = md5.MD5(password);
                if (user.getPassword().equals(password)) {
                    String email = user.getUsername();
                    ActionContext actionContext = ActionContext.getContext();

                    Map session = actionContext.getSession();

                    session.put("user", email);
                    session.put("id", user.getId());
                    chenggong = "1";
                    return "yes";
                }

            }
        }
        catch (Exception e)
        {
            System.out.print(e);
        }
        chenggong = "0";
        return "no";
       // chenggong = "0";
    }

    public String getUsername() {
        return username;
    }
    public void setUsername(String username) {
        this.username = username;
    }
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
