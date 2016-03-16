package com;

import com.opensymphony.xwork2.ActionSupport;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.sql.Date;
/**
 * Created by leyang on 2016/3/16.
 */

public class userInfo extends ActionSupport {

    private String user_id;

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    private String UserName;

    public String getUserName() {
        return UserName;
    }

    public void setUserName(String userName) throws UnsupportedEncodingException {
        UserName = new String(userName.getBytes("iso-8859-1"),"UTF-8");
    }


    private String Password;

    public void setPassword(String password) throws UnsupportedEncodingException {
        Password = new String(password.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getPassword() {
        return Password;
    }

    private String Phone;

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String phone) throws UnsupportedEncodingException {
        Phone =new String(phone.getBytes("iso-8859-1"),"UTF-8");
    }

    public String redir()
    {
        return "yes";
    }
    public String changePassword() throws Exception {
        hibernateOperation.updateUserPassword(new Integer(user_id),md5.MD5(Password));
        return "yes";
    }

    public String changeInfor() throws Exception {
        UserName = URLDecoder.decode(UserName,"UTF-8");
        //UserName = new String(UserName.getBytes("iso-8859-1"),"UTF-8");
        hibernateOperation.updateUserInfor(new Integer(user_id),UserName,Phone);
        return "yes";
    }
    public String delUser() throws Exception {
        hibernateOperation.delUser(new Integer(user_id));
        return "yes";
    }
}
