package com;
import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Administrator on 2016/3/12.
 */
public class zhuce extends ActionSupport {

    private String username;
    private String password;
    private String name;
    private String phone;
    private String identifyingCode;
    @Override
    public String execute() throws Exception {

        List users= hibernateOperation.denglu(username);
        UserEntity user = (UserEntity) users.get(0);
        if (identifyingCode.equals(user.getPassword()))
        {
            int ID = user.getId();
            hibernateOperation.updateUser(ID, md5.MD5(password), new String(name.getBytes("iso-8859-1"),"UTF-8"), phone);
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

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name)  {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getIdentifyingCode() {
        return identifyingCode;
    }

    public void setIdentifyingCode(String identifyingCode) {
        this.identifyingCode = identifyingCode;
    }
}
