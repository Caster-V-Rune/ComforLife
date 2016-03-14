package com;

import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Administrator on 2016/3/13.
 */
public class index extends ActionSupport {

    private List recommandList;

    @Override
    public String execute() throws Exception {
        recommandList = hibernateOperation.recommandList();
        return "yes";
    }

    public List getRecommandList() {
        return recommandList;
    }

    public void setRecommandList(List recommandList) {
        this.recommandList = recommandList;
    }
}
