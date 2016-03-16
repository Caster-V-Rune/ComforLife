package com;

import com.opensymphony.xwork2.ActionSupport;

import java.util.List;

/**
 * Created by Administrator on 2016/3/13.
 */
public class search extends ActionSupport {
    private String kw;
    private int type;
    private int rentPay;
    private int salePay;
    private int room;
    private int rentType;
    private List result;


    @Override
    public String execute() throws Exception {

            kw = new String(kw.getBytes("iso-8859-1"),"UTF-8");


        if (type == 1)
        {
            result = hibernateOperation.searchRent(kw,rentPay,room,rentType);
        }
        else if(type == 0)
        {
            result = hibernateOperation.searchSale(kw,salePay,room,type);
        }
        else
        {
            result = hibernateOperation.searchSale(kw,salePay,room,type-1);
        }
        return "yes";

    }

    public int getRentType() {
        return rentType;
    }

    public void setRentType(int rentType) {
        this.rentType = rentType;
    }

    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    public int getSalePay() {
        return salePay;
    }

    public void setSalePay(int salePay) {
        this.salePay = salePay;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getKw() {
        return kw;
    }

    public void setKw(String kw) {
        this.kw = kw;
    }

    public int getRentPay() {
        return rentPay;
    }

    public void setRentPay(int rentPay) {
        this.rentPay = rentPay;
    }

    public List getResult() {
        return result;
    }

    public void setResult(List result) {
        this.result = result;
    }
}
