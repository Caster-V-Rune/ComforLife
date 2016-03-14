package com;

import javax.persistence.*;

/**
 * Created by Administrator on 2016/3/13.
 */
@Entity
@Table(name = "salehome", schema = "", catalog = "comforlife")
public class SalehomeEntity {
    private int homeId;
    private int userId;

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    private int buildNum;

    public void setBuildNum(Integer buildNum) {
        this.buildNum = buildNum;
    }

    private int unitNum;

    public void setUnitNum(Integer unitNum) {
        this.unitNum = unitNum;
    }

    private int roomNum;

    public void setRoomNum(Integer roomNum) {
        this.roomNum = roomNum;
    }

    private int room;

    public void setRoom(Integer room) {
        this.room = room;
    }

    private int hall;

    public void setHall(Integer hall) {
        this.hall = hall;
    }

    private int toilet;

    public void setToilet(Integer toilet) {
        this.toilet = toilet;
    }

    private int area;

    public void setArea(Integer area) {
        this.area = area;
    }

    private String conName;
    private int unitPrice;

    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
    }

    private int floor;

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    private int totalFloor;

    public void setTotalFloor(Integer totalFloor) {
        this.totalFloor = totalFloor;
    }

    private int direction;

    public void setDirection(Integer direction) {
        this.direction = direction;
    }

    private String desc;
    private int check;

    public void setCheck(Integer check) {
        this.check = check;
    }

    private int attention;

    public void setAttention(Integer attention) {
        this.attention = attention;
    }

    private String latlng;

    @Id
    @Column(name = "homeID", nullable = false, insertable = true, updatable = true)
    public int getHomeId() {
        return homeId;
    }

    public void setHomeId(int homeId) {
        this.homeId = homeId;
    }

    @Basic
    @Column(name = "userID", nullable = true, insertable = true, updatable = true)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "buildNum", nullable = true, insertable = true, updatable = true)
    public int getBuildNum() {
        return buildNum;
    }

    public void setBuildNum(int buildNum) {
        this.buildNum = buildNum;
    }

    @Basic
    @Column(name = "unitNum", nullable = true, insertable = true, updatable = true)
    public int getUnitNum() {
        return unitNum;
    }

    public void setUnitNum(int unitNum) {
        this.unitNum = unitNum;
    }

    @Basic
    @Column(name = "roomNum", nullable = true, insertable = true, updatable = true)
    public int getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(int roomNum) {
        this.roomNum = roomNum;
    }

    @Basic
    @Column(name = "room", nullable = true, insertable = true, updatable = true)
    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    @Basic
    @Column(name = "hall", nullable = true, insertable = true, updatable = true)
    public int getHall() {
        return hall;
    }

    public void setHall(int hall) {
        this.hall = hall;
    }

    @Basic
    @Column(name = "toilet", nullable = true, insertable = true, updatable = true)
    public int getToilet() {
        return toilet;
    }

    public void setToilet(int toilet) {
        this.toilet = toilet;
    }

    @Basic
    @Column(name = "area", nullable = true, insertable = true, updatable = true)
    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    @Basic
    @Column(name = "conName", nullable = true, insertable = true, updatable = true, length = 100)
    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    @Basic
    @Column(name = "unitPrice", nullable = true, insertable = true, updatable = true)
    public int getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(int unitPrice) {
        this.unitPrice = unitPrice;
    }

    @Basic
    @Column(name = "floor", nullable = true, insertable = true, updatable = true)
    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    @Basic
    @Column(name = "totalFloor", nullable = true, insertable = true, updatable = true)
    public int getTotalFloor() {
        return totalFloor;
    }

    public void setTotalFloor(int totalFloor) {
        this.totalFloor = totalFloor;
    }

    @Basic
    @Column(name = "direction", nullable = true, insertable = true, updatable = true)
    public int getDirection() {
        return direction;
    }

    public void setDirection(int direction) {
        this.direction = direction;
    }

    @Basic
    @Column(name = "desc", nullable = true, insertable = true, updatable = true, length = 100)
    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Basic
    @Column(name = "check", nullable = true, insertable = true, updatable = true)
    public int getCheck() {
        return check;
    }

    public void setCheck(int check) {
        this.check = check;
    }

    @Basic
    @Column(name = "attention", nullable = true, insertable = true, updatable = true)
    public int getAttention() {
        return attention;
    }

    public void setAttention(int attention) {
        this.attention = attention;
    }

    @Basic
    @Column(name = "latlng", nullable = true, insertable = true, updatable = true, length = 100)
    public String getLatlng() {
        return latlng;
    }

    public void setLatlng(String latlng) {
        this.latlng = latlng;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SalehomeEntity that = (SalehomeEntity) o;

        if (area != that.area) return false;
        if (attention != that.attention) return false;
        if (buildNum != that.buildNum) return false;
        if (check != that.check) return false;
        if (direction != that.direction) return false;
        if (floor != that.floor) return false;
        if (hall != that.hall) return false;
        if (homeId != that.homeId) return false;
        if (room != that.room) return false;
        if (roomNum != that.roomNum) return false;
        if (toilet != that.toilet) return false;
        if (totalFloor != that.totalFloor) return false;
        if (unitNum != that.unitNum) return false;
        if (unitPrice != that.unitPrice) return false;
        if (userId != that.userId) return false;
        if (conName != null ? !conName.equals(that.conName) : that.conName != null) return false;
        if (desc != null ? !desc.equals(that.desc) : that.desc != null) return false;
        if (latlng != null ? !latlng.equals(that.latlng) : that.latlng != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = homeId;
        result = 31 * result + userId;
        result = 31 * result + buildNum;
        result = 31 * result + unitNum;
        result = 31 * result + roomNum;
        result = 31 * result + room;
        result = 31 * result + hall;
        result = 31 * result + toilet;
        result = 31 * result + area;
        result = 31 * result + (conName != null ? conName.hashCode() : 0);
        result = 31 * result + unitPrice;
        result = 31 * result + floor;
        result = 31 * result + totalFloor;
        result = 31 * result + direction;
        result = 31 * result + (desc != null ? desc.hashCode() : 0);
        result = 31 * result + check;
        result = 31 * result + attention;
        result = 31 * result + (latlng != null ? latlng.hashCode() : 0);
        return result;
    }

    private String homeArea;

    @Basic
    @Column(name = "homeArea", nullable = true, insertable = true, updatable = true, length = 100)
    public String getHomeArea() {
        return homeArea;
    }

    public void setHomeArea(String homeArea) {
        this.homeArea = homeArea;
    }

    private String busiArea;

    @Basic
    @Column(name = "busiArea", nullable = true, insertable = true, updatable = true, length = 100)
    public String getBusiArea() {
        return busiArea;
    }

    public void setBusiArea(String busiArea) {
        this.busiArea = busiArea;
    }

    private Integer fitment;

    @Basic
    @Column(name = "fitment", nullable = true, insertable = true, updatable = true)
    public Integer getFitment() {
        return fitment;
    }

    public void setFitment(Integer fitment) {
        this.fitment = fitment;
    }

    private Integer support;

    @Basic
    @Column(name = "support", nullable = true, insertable = true, updatable = true)
    public Integer getSupport() {
        return support;
    }

    public void setSupport(Integer support) {
        this.support = support;
    }

    private String title;

    @Basic
    @Column(name = "title", nullable = true, insertable = true, updatable = true, length = 100)
    public String getTitle() {
        return title;
    }



    public void setTitle(String title) {
        this.title = title;
    }
    private Integer fs;

    @Basic
    @Column(name = "FS", nullable = true, insertable = true, updatable = true)
    public Integer getFs() {
        return fs;
    }

    public void setFs(Integer fs) {
        this.fs = fs;
    }
}
