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

    public String execute()
    {
        try {
            List users = hibernateOperation.denglu(username);
            if (users == null) {
                return "no";
            } else {
                UserEntity user = (UserEntity) users.get(0);
                password = md5.MD5(password);
                if (user.getPassword().equals(password)) {
                    String email = user.getUsername();
                    ActionContext actionContext = ActionContext.getContext();

                    Map session = actionContext.getSession();

                    session.put("user", email);
                    return "yes";
                } else {
                    return "no";
                }

            }
        }
        catch (Exception e)
        {
            System.out.print(e);
        }
        return "no";
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
