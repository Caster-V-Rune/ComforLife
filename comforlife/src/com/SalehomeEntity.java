package com;

import javax.persistence.Basic;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Date;

/**
 * Created by Administrator on 2016/3/18.
 */
@Entity
@javax.persistence.Table(name = "salehome", schema = "", catalog = "comforlife")
public class SalehomeEntity {
    private int homeId;

    @Id
    @javax.persistence.Column(name = "homeID", nullable = false, insertable = true, updatable = true)
    public int getHomeId() {
        return homeId;
    }

    public void setHomeId(int homeId) {
        this.homeId = homeId;
    }

    private Integer userId;

    @Basic
    @javax.persistence.Column(name = "userID", nullable = true, insertable = true, updatable = true)
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
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

    private Integer room;

    @Basic
    @javax.persistence.Column(name = "room", nullable = true, insertable = true, updatable = true)
    public Integer getRoom() {
        return room;
    }

    public void setRoom(Integer room) {
        this.room = room;
    }

    private Integer hall;

    @Basic
    @javax.persistence.Column(name = "hall", nullable = true, insertable = true, updatable = true)
    public Integer getHall() {
        return hall;
    }

    public void setHall(Integer hall) {
        this.hall = hall;
    }

    private Integer toilet;

    @Basic
    @javax.persistence.Column(name = "toilet", nullable = true, insertable = true, updatable = true)
    public Integer getToilet() {
        return toilet;
    }

    public void setToilet(Integer toilet) {
        this.toilet = toilet;
    }

    private Integer area;

    @Basic
    @javax.persistence.Column(name = "area", nullable = true, insertable = true, updatable = true)
    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    private String homeArea;

    @Basic
    @javax.persistence.Column(name = "homeArea", nullable = true, insertable = true, updatable = true, length = 100)
    public String getHomeArea() {
        return homeArea;
    }

    public void setHomeArea(String homeArea) {
        this.homeArea = homeArea;
    }

    private String busiArea;

    @Basic
    @javax.persistence.Column(name = "busiArea", nullable = true, insertable = true, updatable = true, length = 100)
    public String getBusiArea() {
        return busiArea;
    }

    public void setBusiArea(String busiArea) {
        this.busiArea = busiArea;
    }

    private String conName;

    @Basic
    @javax.persistence.Column(name = "conName", nullable = true, insertable = true, updatable = true, length = 100)
    public String getConName() {
        return conName;
    }

    public void setConName(String conName) {
        this.conName = conName;
    }

    private Integer fitment;

    @Basic
    @javax.persistence.Column(name = "fitment", nullable = true, insertable = true, updatable = true)
    public Integer getFitment() {
        return fitment;
    }

    public void setFitment(Integer fitment) {
        this.fitment = fitment;
    }

    private Integer unitPrice;

    @Basic
    @javax.persistence.Column(name = "unitPrice", nullable = true, insertable = true, updatable = true)
    public Integer getUnitPrice() {
        return unitPrice;
    }

    public void setUnitPrice(Integer unitPrice) {
        this.unitPrice = unitPrice;
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

    private Integer totalFloor;

    @Basic
    @javax.persistence.Column(name = "totalFloor", nullable = true, insertable = true, updatable = true)
    public Integer getTotalFloor() {
        return totalFloor;
    }

    public void setTotalFloor(Integer totalFloor) {
        this.totalFloor = totalFloor;
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

    private String descri;

    @Basic
    @javax.persistence.Column(name = "descri", nullable = true, insertable = true, updatable = true, length = 100)
    public String getDescri() {
        return descri;
    }

    public void setDescri(String descri) {
        this.descri = descri;
    }

    private Integer checkIn;

    @Basic
    @javax.persistence.Column(name = "checkIn", nullable = true, insertable = true, updatable = true)
    public Integer getCheckIn() {
        return checkIn;
    }

    public void setCheckIn(Integer checkIn) {
        this.checkIn = checkIn;
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

    private Integer fs;

    @Basic
    @javax.persistence.Column(name = "FS", nullable = true, insertable = true, updatable = true)
    public Integer getFs() {
        return fs;
    }

    public void setFs(Integer fs) {
        this.fs = fs;
    }

    private String cert3;

    @Basic
    @javax.persistence.Column(name = "cert3", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getCert3() {
        return cert3;
    }

    public void setCert3(String cert3) {
        this.cert3 = cert3;
    }

    private String cert2;

    @Basic
    @javax.persistence.Column(name = "cert2", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getCert2() {
        return cert2;
    }

    public void setCert2(String cert2) {
        this.cert2 = cert2;
    }

    private String cert1;

    @Basic
    @javax.persistence.Column(name = "cert1", nullable = true, insertable = true, updatable = true, length = 65535)
    public String getCert1() {
        return cert1;
    }

    public void setCert1(String cert1) {
        this.cert1 = cert1;
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

    private Integer homeType;

    @Basic
    @javax.persistence.Column(name = "homeType", nullable = true, insertable = true, updatable = true)
    public Integer getHomeType() {
        return homeType;
    }

    public void setHomeType(Integer homeType) {
        this.homeType = homeType;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SalehomeEntity that = (SalehomeEntity) o;

        if (homeId != that.homeId) return false;
        if (area != null ? !area.equals(that.area) : that.area != null) return false;
        if (attention != null ? !attention.equals(that.attention) : that.attention != null) return false;
        if (buildNum != null ? !buildNum.equals(that.buildNum) : that.buildNum != null) return false;
        if (busiArea != null ? !busiArea.equals(that.busiArea) : that.busiArea != null) return false;
        if (cert1 != null ? !cert1.equals(that.cert1) : that.cert1 != null) return false;
        if (cert2 != null ? !cert2.equals(that.cert2) : that.cert2 != null) return false;
        if (cert3 != null ? !cert3.equals(that.cert3) : that.cert3 != null) return false;
        if (checkIn != null ? !checkIn.equals(that.checkIn) : that.checkIn != null) return false;
        if (checkInTime != null ? !checkInTime.equals(that.checkInTime) : that.checkInTime != null) return false;
        if (conName != null ? !conName.equals(that.conName) : that.conName != null) return false;
        if (descri != null ? !descri.equals(that.descri) : that.descri != null) return false;
        if (direction != null ? !direction.equals(that.direction) : that.direction != null) return false;
        if (fitment != null ? !fitment.equals(that.fitment) : that.fitment != null) return false;
        if (floor != null ? !floor.equals(that.floor) : that.floor != null) return false;
        if (fs != null ? !fs.equals(that.fs) : that.fs != null) return false;
        if (hall != null ? !hall.equals(that.hall) : that.hall != null) return false;
        if (homeArea != null ? !homeArea.equals(that.homeArea) : that.homeArea != null) return false;
        if (homeType != null ? !homeType.equals(that.homeType) : that.homeType != null) return false;
        if (latlng != null ? !latlng.equals(that.latlng) : that.latlng != null) return false;
        if (room != null ? !room.equals(that.room) : that.room != null) return false;
        if (roomNum != null ? !roomNum.equals(that.roomNum) : that.roomNum != null) return false;
        if (support != null ? !support.equals(that.support) : that.support != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;
        if (toilet != null ? !toilet.equals(that.toilet) : that.toilet != null) return false;
        if (totalFloor != null ? !totalFloor.equals(that.totalFloor) : that.totalFloor != null) return false;
        if (unitNum != null ? !unitNum.equals(that.unitNum) : that.unitNum != null) return false;
        if (unitPrice != null ? !unitPrice.equals(that.unitPrice) : that.unitPrice != null) return false;
        if (userId != null ? !userId.equals(that.userId) : that.userId != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = homeId;
        result = 31 * result + (userId != null ? userId.hashCode() : 0);
        result = 31 * result + (buildNum != null ? buildNum.hashCode() : 0);
        result = 31 * result + (unitNum != null ? unitNum.hashCode() : 0);
        result = 31 * result + (roomNum != null ? roomNum.hashCode() : 0);
        result = 31 * result + (room != null ? room.hashCode() : 0);
        result = 31 * result + (hall != null ? hall.hashCode() : 0);
        result = 31 * result + (toilet != null ? toilet.hashCode() : 0);
        result = 31 * result + (area != null ? area.hashCode() : 0);
        result = 31 * result + (homeArea != null ? homeArea.hashCode() : 0);
        result = 31 * result + (busiArea != null ? busiArea.hashCode() : 0);
        result = 31 * result + (conName != null ? conName.hashCode() : 0);
        result = 31 * result + (fitment != null ? fitment.hashCode() : 0);
        result = 31 * result + (unitPrice != null ? unitPrice.hashCode() : 0);
        result = 31 * result + (floor != null ? floor.hashCode() : 0);
        result = 31 * result + (totalFloor != null ? totalFloor.hashCode() : 0);
        result = 31 * result + (direction != null ? direction.hashCode() : 0);
        result = 31 * result + (support != null ? support.hashCode() : 0);
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (descri != null ? descri.hashCode() : 0);
        result = 31 * result + (checkIn != null ? checkIn.hashCode() : 0);
        result = 31 * result + (attention != null ? attention.hashCode() : 0);
        result = 31 * result + (latlng != null ? latlng.hashCode() : 0);
        result = 31 * result + (fs != null ? fs.hashCode() : 0);
        result = 31 * result + (cert3 != null ? cert3.hashCode() : 0);
        result = 31 * result + (cert2 != null ? cert2.hashCode() : 0);
        result = 31 * result + (cert1 != null ? cert1.hashCode() : 0);
        result = 31 * result + (checkInTime != null ? checkInTime.hashCode() : 0);
        result = 31 * result + (homeType != null ? homeType.hashCode() : 0);
        return result;
    }
}
