package com;

import com.opensymphony.xwork2.ActionSupport;

import java.util.List;
import java.util.Random;
import com.mail.*;
/**
 * Created by Administrator on 2016/3/11.
 */
public class yanzheng extends ActionSupport {

    private String username;

    @Override
    public String execute() throws Exception {
        List list= hibernateOperation.denglu(username);
        if (list == null)
        {
            Random ne=new Random();
            int x =ne.nextInt(9999-1000+1)+1000;
            String yanzhengma = x+"";
            UserEntity userEntity = new UserEntity();
            userEntity.setUsername(username);
            userEntity.setPassword(yanzhengma);
            userEntity.setName("");
            userEntity.setPhone("");
            hibernateOperation.insertUser(userEntity);
            SendMailDemo.send(username,yanzhengma);
            return "yes";
        }
        else
        {
            return "no";
        }

    }
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
