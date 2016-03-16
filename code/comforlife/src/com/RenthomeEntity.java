package com;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;
import java.util.Arrays;

/**
 * Created by Administrator on 2016/3/16.
 */
@Entity
@javax.persistence.Table(name = "renthome", schema = "", catalog = "comforlife")
public class RenthomeEntity {
    private int homeId;

    @Id
    @javax.persistence.Column(name = "homeID", nullable = false, insertable = true, updatable = true)
    public int getHomeId() {
        return homeId;
    }

    public void setHomeId(int homeId) {
        this.homeId = homeId;
    }

    private int userId;

    @Basic
    @javax.persistence.Column(name = "userID", nullable = false, insertable = true, updatable = true)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    private int homeType;

    @Basic
    @javax.persistence.Column(name = "homeType", nullable = false, insertable = true, updatable = true)
    public int getHomeType() {
        return homeType;
    }

    public void setHomeType(int homeType) {
        this.homeType = homeType;
    }

    private int rentType;

    @Basic
    @javax.persistence.Column(name = "rentType", nullable = false, insertable = true, updatable = true)
    public int getRentType() {
        return rentType;
    }

    public void setRentType(int rentType) {
        this.rentType = rentType;
    }

    private String conName;

    @Basic
    @javax.persistence.Column(name = "conName", nullable = false, insertable = true, updatable = true, length = 100)
    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    private String homeArea;

    @Basic
    @javax.persistence.Column(name = "homeArea", nullable = false, insertable = true, updatable = true, length = 100)
    public String getHomeArea() {
        return homeArea;
    }

    public void setHomeArea(String homeArea) {
        this.homeArea = homeArea;
    }

    private String busiArea;

    @Basic
    @javax.persistence.Column(name = "busiArea", nullable = false, insertable = true, updatable = true, length = 100)
    public String getBusiArea() {
        return busiArea;
    }

    public void setBusiArea(String busiArea) {
        this.busiArea = busiArea;
    }

    private int room;

    @Basic
    @javax.persistence.Column(name = "room", nullable = false, insertable = true, updatable = true)
    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    private int hall;

    @Basic
    @javax.persistence.Column(name = "hall", nullable = false, insertable = true, updatable = true)
    public int getHall() {
        return hall;
    }

    public void setHall(int hall) {
        this.hall = hall;
    }

    private int toilet;

    @Basic
    @javax.persistence.Column(name = "toilet", nullable = false, insertable = true, updatable = true)
    public int getToilet() {
        return toilet;
    }

    public void setToilet(int toilet) {
        this.toilet = toilet;
    }

    private int area;

    @Basic
    @javax.persistence.Column(name = "area", nullable = false, insertable = true, updatable = true)
    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    private int fitment;

    @Basic
    @javax.persistence.Column(name = "fitment", nullable = false, insertable = true, updatable = true)
    public int getFitment() {
        return fitment;
    }

    public void setFitment(int fitment) {
        this.fitment = fitment;
    }

    private Integer direction;

    @Basic
    @javax.persistence.Column(name = "direction", nullable = true, insertable = true, updatable = true)
    public Integer getDirection() {
        return direction;
    }

    public void setDirection(Integer direction) {
        this.direction = direction;
    }

    private byte[] cert;

    @Basic
    @javax.persistence.Column(name = "cert", nullable = true, insertable = true, updatable = true)
    public byte[] getCert() {
        return cert;
    }

    public void setCert(byte[] cert) {
        this.cert = cert;
    }

    private Integer floor;

    @Basic
    @javax.persistence.Column(name = "floor", nullable = true, insertable = true, updatable = true)
    public Integer getFloor() {
        return floor;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    private Integer floorNum;

    @Basic
    @javax.persistence.Column(name = "floorNum", nullable = true, insertable = true, updatable = true)
    public Integer getFloorNum() {
        return floorNum;
    }

    public void setFloorNum(Integer floorNum) {
        this.floorNum = floorNum;
    }

    private Integer buildNum;

    @Basic
    @javax.persistence.Column(name = "buildNum", nullable = true, insertable = true, updatable = true)
    public Integer getBuildNum() {
        return buildNum;
    }

    public void setBuildNum(Integer buildNum) {
        this.buildNum = buildNum;
    }

    private Integer unitNum;

    @Basic
    @javax.persistence.Column(name = "unitNum", nullable = true, insertable = true, updatable = true)
    public Integer getUnitNum() {
        return unitNum;
    }

    public void setUnitNum(Integer unitNum) {
        this.unitNum = unitNum;
    }

    private Integer roomNum;

    @Basic
    @javax.persistence.Column(name = "roomNum", nullable = true, insertable = true, updatable = true)
    public Integer getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(Integer roomNum) {
        this.roomNum = roomNum;
    }

    private Integer rentNum;

    @Basic
    @javax.persistence.Column(name = "rentNum", nullable = true, insertable = true, updatable = true)
    public Integer getRentNum() {
        return rentNum;
    }

    public void setRentNum(Integer rentNum) {
        this.rentNum = rentNum;
    }

    private Integer depositType;

    @Basic
    @javax.persistence.Column(name = "depositType", nullable = true, insertable = true, updatable = true)
    public Integer getDepositType() {
        return depositType;
    }

    public void setDepositType(Integer depositType) {
        this.depositType = depositType;
    }

    private Integer support;

    @Basic
    @javax.persistence.Column(name = "support", nullable = true, insertable = true, updatable = true)
    public Integer getSupport() {
        return support;
    }

    public void setSupport(Integer support) {
        this.support = support;
    }

    private String title;

    @Basic
    @javax.persistence.Column(name = "title", nullable = true, insertable = true, updatable = true, length = 100)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    private String desc;

    @Basic
    @javax.persistence.Column(name = "desc", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    private Date checkInTime;

    @Basic
    @javax.persistence.Column(name = "checkInTime", nullable = true, insertable = true, updatable = true)
    public Date getCheckInTime() {
        return checkInTime;
    }

    public void setCheckInTime(Date checkInTime) {
        this.checkInTime = checkInTime;
    }

    private Integer check;

    @Basic
    @javax.persistence.Column(name = "check", nullable = true, insertable = true, updatable = true)
    public Integer getCheck() {
        return check;
    }

    public void setCheck(Integer check) {
        this.check = check;
    }

    private Integer attention;

    @Basic
    @javax.persistence.Column(name = "attention", nullable = true, insertable = true, updatable = true)
    public Integer getAttention() {
        return attention;
    }

    public void setAttention(Integer attention) {
        this.attention = attention;
    }

    private String latlng;

    @Basic
    @javax.persistence.Column(name = "latlng", nullable = true, insertable = true, updatable = true, length = 100)
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

        RenthomeEntity that = (RenthomeEntity) o;

        if (area != that.area) return false;
        if (fitment != that.fitment) return false;
        if (hall != that.hall) return false;
        if (homeId != that.homeId) return false;
        if (homeType != that.homeType) return false;
        if (rentType != that.rentType) return false;
        if (room != that.room) return false;
        if (toilet != that.toilet) return false;
        if (userId != that.userId) return false;
        if (attention != null ? !attention.equals(that.attention) : that.attention != null) return false;
        if (buildNum != null ? !buildNum.equals(that.buildNum) : that.buildNum != null) return false;
        if (busiArea != null ? !busiArea.equals(that.busiArea) : that.busiArea != null) return false;
        if (!Arrays.equals(cert, that.cert)) return false;
        if (check != null ? !check.equals(that.check) : that.check != null) return false;
        if (checkInTime != null ? !checkInTime.equals(that.checkInTime) : that.checkInTime != null) return false;
        if (conName != null ? !conName.equals(that.conName) : that.conName != null) return false;
        if (depositType != null ? !depositType.equals(that.depositType) : that.depositType != null) return false;
        if (desc != null ? !desc.equals(that.desc) : that.desc != null) return false;
        if (direction != null ? !direction.equals(that.direction) : that.direction != null) return false;
        if (floor != null ? !floor.equals(that.floor) : that.floor != null) return false;
        if (floorNum != null ? !floorNum.equals(that.floorNum) : that.floorNum != null) return false;
        if (homeArea != null ? !homeArea.equals(that.homeArea) : that.homeArea != null) return false;
        if (latlng != null ? !latlng.equals(that.latlng) : that.latlng != null) return false;
        if (rentNum != null ? !rentNum.equals(that.rentNum) : that.rentNum != null) return false;
        if (roomNum != null ? !roomNum.equals(that.roomNum) : that.roomNum != null) return false;
        if (support != null ? !support.equals(that.support) : that.support != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (unitNum != null ? !unitNum.equals(that.unitNum) : that.unitNum != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = homeId;
        result = 31 * result + userId;
        result = 31 * result + homeType;
        result = 31 * result + rentType;
        result = 31 * result + (conName != null ? conName.hashCode() : 0);
        result = 31 * result + (homeArea != null ? homeArea.hashCode() : 0);
        result = 31 * result + (busiArea != null ? busiArea.hashCode() : 0);
        result = 31 * result + room;
        result = 31 * result + hall;
        result = 31 * result + toilet;
        result = 31 * result + area;
        result = 31 * result + fitment;
        result = 31 * result + (direction != null ? direction.hashCode() : 0);
        result = 31 * result + (cert != null ? Arrays.hashCode(cert) : 0);
        result = 31 * result + (floor != null ? floor.hashCode() : 0);
        result = 31 * result + (floorNum != null ? floorNum.hashCode() : 0);
        result = 31 * result + (buildNum != null ? buildNum.hashCode() : 0);
        result = 31 * result + (unitNum != null ? unitNum.hashCode() : 0);
        result = 31 * result + (roomNum != null ? roomNum.hashCode() : 0);
        result = 31 * result + (rentNum != null ? rentNum.hashCode() : 0);
        result = 31 * result + (depositType != null ? depositType.hashCode() : 0);
        result = 31 * result + (support != null ? support.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (desc != null ? desc.hashCode() : 0);
        result = 31 * result + (checkInTime != null ? checkInTime.hashCode() : 0);
        result = 31 * result + (check != null ? check.hashCode() : 0);
        result = 31 * result + (attention != null ? attention.hashCode() : 0);
        result = 31 * result + (latlng != null ? latlng.hashCode() : 0);
        return result;
    }
}
