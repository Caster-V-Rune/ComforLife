package com;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import java.util.Map;

/**
 * Created by Administrator on 2016/3/18.
 */
public class delSession extends ActionSupport{
    @Override
    public String execute() throws Exception {
        ActionContext actionContext = ActionContext.getContext();

        Map session = actionContext.getSession();

        session.remove("user");
        session.remove("id");
        return "yes";
    }
}
