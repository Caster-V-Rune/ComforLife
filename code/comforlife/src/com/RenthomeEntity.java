package com;

import javax.persistence.*;
import java.sql.Date;
import java.util.Arrays;

/**
 * Created by Administrator on 2016/3/13.
 */
@Entity
@Table(name = "renthome", schema = "", catalog = "comforlife")
public class RenthomeEntity {
    private int homeId;
    private int userId;
    private int homeType;
    private int rentType;
    private String conName;
    private String homeArea;
    private String busiArea;
    private int room;
    private int hall;
    private int toilet;
    private int area;
    private int fitment;
    private int direction;
    private byte[] cert;
    private int floor;
    private int floorNum;
    private int buildNum;
    private int unitNum;
    private int roomNum;
    private int rentNum;
    private int depositType;
    private int support;
    private String title;
    private String desc;
    private Date checkInTime;
    private int check;
    private int attention;
    private String latlng;

    public void setDirection(Integer direction) {
        this.direction = direction;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    public void setFloorNum(Integer floorNum) {
        this.floorNum = floorNum;
    }

    public void setBuildNum(Integer buildNum) {
        this.buildNum = buildNum;
    }

    public void setUnitNum(Integer unitNum) {
        this.unitNum = unitNum;
    }

    public void setRoomNum(Integer roomNum) {
        this.roomNum = roomNum;
    }

    public void setRentNum(Integer rentNum) {
        this.rentNum = rentNum;
    }

    public void setDepositType(Integer depositType) {
        this.depositType = depositType;
    }

    public void setSupport(Integer support) {
        this.support = support;
    }

    public void setCheck(Integer check) {
        this.check = check;
    }

    public void setAttention(Integer attention) {
        this.attention = attention;
    }

    @Id
    @Column(name = "homeID", nullable = false, insertable = true, updatable = true)
    public int getHomeId() {
        return homeId;
    }

    public void setHomeId(int homeId) {
        this.homeId = homeId;
    }

    @Basic
    @Column(name = "userID", nullable = false, insertable = true, updatable = true)
    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "homeType", nullable = false, insertable = true, updatable = true)
    public int getHomeType() {
        return homeType;
    }

    public void setHomeType(int homeType) {
        this.homeType = homeType;
    }

    @Basic
    @Column(name = "rentType", nullable = false, insertable = true, updatable = true)
    public int getRentType() {
        return rentType;
    }

    public void setRentType(int rentType) {
        this.rentType = rentType;
    }

    @Basic
    @Column(name = "conName", nullable = false, insertable = true, updatable = true, length = 100)
    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    @Basic
    @Column(name = "homeArea", nullable = false, insertable = true, updatable = true, length = 100)
    public String getHomeArea() {
        return homeArea;
    }

    public void setHomeArea(String homeArea) {
        this.homeArea = homeArea;
    }

    @Basic
    @Column(name = "busiArea", nullable = false, insertable = true, updatable = true, length = 100)
    public String getBusiArea() {
        return busiArea;
    }

    public void setBusiArea(String busiArea) {
        this.busiArea = busiArea;
    }

    @Basic
    @Column(name = "room", nullable = false, insertable = true, updatable = true)
    public int getRoom() {
        return room;
    }

    public void setRoom(int room) {
        this.room = room;
    }

    @Basic
    @Column(name = "hall", nullable = false, insertable = true, updatable = true)
    public int getHall() {
        return hall;
    }

    public void setHall(int hall) {
        this.hall = hall;
    }

    @Basic
    @Column(name = "toilet", nullable = false, insertable = true, updatable = true)
    public int getToilet() {
        return toilet;
    }

    public void setToilet(int toilet) {
        this.toilet = toilet;
    }

    @Basic
    @Column(name = "area", nullable = false, insertable = true, updatable = true)
    public int getArea() {
        return area;
    }

    public void setArea(int area) {
        this.area = area;
    }

    @Basic
    @Column(name = "fitment", nullable = false, insertable = true, updatable = true)
    public int getFitment() {
        return fitment;
    }

    public void setFitment(int fitment) {
        this.fitment = fitment;
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
    @Column(name = "cert", nullable = true, insertable = true, updatable = true)
    public byte[] getCert() {
        return cert;
    }

    public void setCert(byte[] cert) {
        this.cert = cert;
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
    @Column(name = "floorNum", nullable = true, insertable = true, updatable = true)
    public int getFloorNum() {
        return floorNum;
    }

    public void setFloorNum(int floorNum) {
        this.floorNum = floorNum;
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
    @Column(name = "rentNum", nullable = true, insertable = true, updatable = true)
    public int getRentNum() {
        return rentNum;
    }

    public void setRentNum(int rentNum) {
        this.rentNum = rentNum;
    }

    @Basic
    @Column(name = "depositType", nullable = true, insertable = true, updatable = true)
    public int getDepositType() {
        return depositType;
    }

    public void setDepositType(int depositType) {
        this.depositType = depositType;
    }

    @Basic
    @Column(name = "support", nullable = true, insertable = true, updatable = true)
    public int getSupport() {
        return support;
    }

    public void setSupport(int support) {
        this.support = support;
    }

    @Basic
    @Column(name = "title", nullable = true, insertable = true, updatable = true, length = 100)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "desc", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getDesc() {
        return desc;
    }

    public void setDesc(String desc) {
        this.desc = desc;
    }

    @Basic
    @Column(name = "checkInTime", nullable = true, insertable = true, updatable = true)
    public Date getCheckInTime() {
        return checkInTime;
    }

    public void setCheckInTime(Date checkInTime) {
        this.checkInTime = checkInTime;
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

        RenthomeEntity that = (RenthomeEntity) o;

        if (area != that.area) return false;
        if (attention != that.attention) return false;
        if (buildNum != that.buildNum) return false;
        if (check != that.check) return false;
        if (depositType != that.depositType) return false;
        if (direction != that.direction) return false;
        if (fitment != that.fitment) return false;
        if (floor != that.floor) return false;
        if (floorNum != that.floorNum) return false;
        if (hall != that.hall) return false;
        if (homeId != that.homeId) return false;
        if (homeType != that.homeType) return false;
        if (rentNum != that.rentNum) return false;
        if (rentType != that.rentType) return false;
        if (room != that.room) return false;
        if (roomNum != that.roomNum) return false;
        if (support != that.support) return false;
        if (toilet != that.toilet) return false;
        if (unitNum != that.unitNum) return false;
        if (userId != that.userId) return false;
        if (busiArea != null ? !busiArea.equals(that.busiArea) : that.busiArea != null) return false;
        if (!Arrays.equals(cert, that.cert)) return false;
        if (checkInTime != null ? !checkInTime.equals(that.checkInTime) : that.checkInTime != null) return false;
        if (conName != null ? !conName.equals(that.conName) : that.conName != null) return false;
        if (desc != null ? !desc.equals(that.desc) : that.desc != null) return false;
        if (homeArea != null ? !homeArea.equals(that.homeArea) : that.homeArea != null) return false;
        if (latlng != null ? !latlng.equals(that.latlng) : that.latlng != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;

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
        result = 31 * result + direction;
        result = 31 * result + (cert != null ? Arrays.hashCode(cert) : 0);
        result = 31 * result + floor;
        result = 31 * result + floorNum;
        result = 31 * result + buildNum;
        result = 31 * result + unitNum;
        result = 31 * result + roomNum;
        result = 31 * result + rentNum;
        result = 31 * result + depositType;
        result = 31 * result + support;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (desc != null ? desc.hashCode() : 0);
        result = 31 * result + (checkInTime != null ? checkInTime.hashCode() : 0);
        result = 31 * result + check;
        result = 31 * result + attention;
        result = 31 * result + (latlng != null ? latlng.hashCode() : 0);
        return result;
    }
}
