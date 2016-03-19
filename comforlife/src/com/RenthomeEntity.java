package com;

import javax.persistence.*;
import java.sql.Date;

/**
 * Created by Administrator on 2016/3/18.
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
    private Integer direction;
    private Integer floor;
    private Integer floorNum;
    private Integer buildNum;
    private Integer unitNum;
    private Integer roomNum;
    private Integer rentNum;
    private Integer depositType;
    private Integer support;
    private String title;
    private String descri;
    private Date checkInTime;
    private Integer checkIn;
    private Integer attention;
    private String latlng;
    private String cert1;
    private String cert2;
    private String cert3;

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
    public Integer getDirection() {
        return direction;
    }

    public void setDirection(Integer direction) {
        this.direction = direction;
    }

    @Basic
    @Column(name = "floor", nullable = true, insertable = true, updatable = true)
    public Integer getFloor() {
        return floor;
    }

    public void setFloor(Integer floor) {
        this.floor = floor;
    }

    @Basic
    @Column(name = "floorNum", nullable = true, insertable = true, updatable = true)
    public Integer getFloorNum() {
        return floorNum;
    }

    public void setFloorNum(Integer floorNum) {
        this.floorNum = floorNum;
    }

    @Basic
    @Column(name = "buildNum", nullable = true, insertable = true, updatable = true)
    public Integer getBuildNum() {
        return buildNum;
    }

    public void setBuildNum(Integer buildNum) {
        this.buildNum = buildNum;
    }

    @Basic
    @Column(name = "unitNum", nullable = true, insertable = true, updatable = true)
    public Integer getUnitNum() {
        return unitNum;
    }

    public void setUnitNum(Integer unitNum) {
        this.unitNum = unitNum;
    }

    @Basic
    @Column(name = "roomNum", nullable = true, insertable = true, updatable = true)
    public Integer getRoomNum() {
        return roomNum;
    }

    public void setRoomNum(Integer roomNum) {
        this.roomNum = roomNum;
    }

    @Basic
    @Column(name = "rentNum", nullable = true, insertable = true, updatable = true)
    public Integer getRentNum() {
        return rentNum;
    }

    public void setRentNum(Integer rentNum) {
        this.rentNum = rentNum;
    }

    @Basic
    @Column(name = "depositType", nullable = true, insertable = true, updatable = true)
    public Integer getDepositType() {
        return depositType;
    }

    public void setDepositType(Integer depositType) {
        this.depositType = depositType;
    }

    @Basic
    @Column(name = "support", nullable = true, insertable = true, updatable = true)
    public Integer getSupport() {
        return support;
    }

    public void setSupport(Integer support) {
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
    @Column(name = "descri", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getDescri() {
        return descri;
    }

    public void setDescri(String descri) {
        this.descri = descri;
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
    @Column(name = "checkIn", nullable = true, insertable = true, updatable = true)
    public Integer getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Integer checkIn) {
        this.checkIn = checkIn;
    }

    @Basic
    @Column(name = "attention", nullable = true, insertable = true, updatable = true)
    public Integer getAttention() {
        return attention;
    }

    public void setAttention(Integer attention) {
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

    @Basic
    @Column(name = "cert1", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getCert1() {
        return cert1;
    }

    public void setCert1(String cert1) {
        this.cert1 = cert1;
    }

    @Basic
    @Column(name = "cert2", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getCert2() {
        return cert2;
    }

    public void setCert2(String cert2) {
        this.cert2 = cert2;
    }

    @Basic
    @Column(name = "cert3", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getCert3() {
        return cert3;
    }

    public void setCert3(String cert3) {
        this.cert3 = cert3;
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
        if (cert1 != null ? !cert1.equals(that.cert1) : that.cert1 != null) return false;
        if (cert2 != null ? !cert2.equals(that.cert2) : that.cert2 != null) return false;
        if (cert3 != null ? !cert3.equals(that.cert3) : that.cert3 != null) return false;
        if (checkIn != null ? !checkIn.equals(that.checkIn) : that.checkIn != null) return false;
        if (checkInTime != null ? !checkInTime.equals(that.checkInTime) : that.checkInTime != null) return false;
        if (conName != null ? !conName.equals(that.conName) : that.conName != null) return false;
        if (depositType != null ? !depositType.equals(that.depositType) : that.depositType != null) return false;
        if (descri != null ? !descri.equals(that.descri) : that.descri != null) return false;
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
        result = 31 * result + (floor != null ? floor.hashCode() : 0);
        result = 31 * result + (floorNum != null ? floorNum.hashCode() : 0);
        result = 31 * result + (buildNum != null ? buildNum.hashCode() : 0);
        result = 31 * result + (unitNum != null ? unitNum.hashCode() : 0);
        result = 31 * result + (roomNum != null ? roomNum.hashCode() : 0);
        result = 31 * result + (rentNum != null ? rentNum.hashCode() : 0);
        result = 31 * result + (depositType != null ? depositType.hashCode() : 0);
        result = 31 * result + (support != null ? support.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (descri != null ? descri.hashCode() : 0);
        result = 31 * result + (checkInTime != null ? checkInTime.hashCode() : 0);
        result = 31 * result + (checkIn != null ? checkIn.hashCode() : 0);
        result = 31 * result + (attention != null ? attention.hashCode() : 0);
        result = 31 * result + (latlng != null ? latlng.hashCode() : 0);
        result = 31 * result + (cert1 != null ? cert1.hashCode() : 0);
        result = 31 * result + (cert2 != null ? cert2.hashCode() : 0);
        result = 31 * result + (cert3 != null ? cert3.hashCode() : 0);
        return result;
    }
}
