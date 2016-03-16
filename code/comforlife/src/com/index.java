package com;

import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Administrator on 2016/3/13.
 */
public class index extends ActionSupport {

    private List salerecommandList;
    private List rentrecommandList;
    private List saleaccordTimeList;
    private List rentaccordTimeList;
    private List newsList;

    @Override
    public String execute() throws Exception {
        salerecommandList = hibernateOperation.recommandList("SalehomeEntity");
        saleaccordTimeList = hibernateOperation.sortAccordingTime(4,"SalehomeEntity");
        rentrecommandList = hibernateOperation.recommandList("RenthomeEntity");
        rentaccordTimeList = hibernateOperation.sortAccordingTime(4,"RenthomeEntity");
        newsList = hibernateOperation.newsAccordingTime(5);
        return "yes";
    }

    public List getNewsList() {
        return newsList;
    }

    public void setNewsList(List newsList) {
        this.newsList = newsList;
    }

    public List getSalerecommandList() {
        return salerecommandList;
    }

    public void setSalerecommandList(List salerecommandList) {
        this.salerecommandList = salerecommandList;
    }

    public List getRentaccordTimeList() {
        return rentaccordTimeList;
    }

    public void setRentaccordTimeList(List rentaccordTimeList) {
        this.rentaccordTimeList = rentaccordTimeList;
    }

    public List getSaleaccordTimeList() {
        return saleaccordTimeList;
    }

    public void setSaleaccordTimeList(List saleaccordTimeList) {
        this.saleaccordTimeList = saleaccordTimeList;
    }

    public List getRentrecommandList() {
        return rentrecommandList;
    }

    public void setRentrecommandList(List rentrecommandList) {
        this.rentrecommandList = rentrecommandList;
    }
}
