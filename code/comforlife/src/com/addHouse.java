package com;

import com.opensymphony.xwork2.ActionSupport;

import java.io.UnsupportedEncodingException;
import java.sql.Date;


/**
 * Created by leyang on 2016/3/15.
 */
public class addHouse extends ActionSupport {
    private String HomeType;

    private String RentType;

    private String HomeArea;

    private String BusiArea;

    public void setBusiArea(String busiArea) throws UnsupportedEncodingException {
        BusiArea = new String(busiArea.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getBusiArea() {
        return BusiArea;
    }


    private String ConName;

    public void setConName(String conName) throws UnsupportedEncodingException {
        ConName = new String(conName.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getConName() {
        return ConName;
    }

    private String Room;

    private String Hall;

    private String Toilet;


    private String Area;

    private String Fitment;

    private String Direction;


    private String Floor;


    private String FloorNum;


    private String BuildNum;


    private String UnitNum;


    private String RoomNum;

    private String RentNum;

    private String DepositType;


    private String Support;

    private String Title;

    public void setTitle(String title) throws UnsupportedEncodingException {
        Title =  new String(title.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getTitle() {
        return Title;
    }

    private String Desc;

    public void setDesc(String desc) throws UnsupportedEncodingException {
        Desc = new String(desc.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getDesc() {
        return Desc;
    }

    private String CheckInTime;



    public String redir()
    {
        return "yes";
    }
    public String execute() throws Exception {
            RenthomeEntity renthomeEntity = new RenthomeEntity();
            renthomeEntity.setHomeType(new Integer(HomeType));
            renthomeEntity.setRentType(new Integer(RentType));
            renthomeEntity.setHomeArea(HomeArea);
            renthomeEntity.setBusiArea(BusiArea);
            renthomeEntity.setConName(ConName);
            renthomeEntity.setRoom(new Integer(Room));
            renthomeEntity.setHall(new Integer(Hall));
            renthomeEntity.setToilet(new Integer(Toilet));
            renthomeEntity.setArea(new Integer(Area));
            renthomeEntity.setFitment(new Integer(Fitment));
            renthomeEntity.setDirection(new Integer(Direction));
            renthomeEntity.setFloor(new Integer(Floor));
            renthomeEntity.setFloorNum(new Integer(FloorNum));
            renthomeEntity.setBuildNum(new Integer(BuildNum));
            renthomeEntity.setUnitNum(new Integer(UnitNum));
            renthomeEntity.setRoomNum(new Integer(RoomNum));
            renthomeEntity.setRentNum(new Integer(RentNum));
            renthomeEntity.setDepositType(new Integer(DepositType));
            renthomeEntity.setSupport(new Integer(Support));
            renthomeEntity.setTitle(Title);
            renthomeEntity.setDesc(Desc);
            renthomeEntity.setCheckInTime(new Date(new Long(CheckInTime)));
            hibernateOperation.insertRentHouse(renthomeEntity);
            return "yes";
    }

    public String getHomeType() {
        return HomeType;
    }

    public void setHomeType(String homeType) throws UnsupportedEncodingException {
        HomeType = new String(homeType.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getRentType() {
        return RentType;
    }

    public void setRentType(String rentType) throws UnsupportedEncodingException {
        RentType = new String(rentType.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getHomeArea() {
        return HomeArea;
    }

    public void setHomeArea(String homeArea) throws UnsupportedEncodingException {
        HomeArea = new String(homeArea.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getRoom() {
        return Room;
    }

    public void setRoom(String room) throws UnsupportedEncodingException {
        Room = new String(room.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getHall() {
        return Hall;
    }

    public void setHall(String hall) throws UnsupportedEncodingException {
        Hall = new String(hall.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getToilet() {
        return Toilet;
    }

    public void setToilet(String toilet) throws UnsupportedEncodingException {
        Toilet =  new String(toilet.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getArea() {
        return Area;
    }

    public void setArea(String area) throws UnsupportedEncodingException {
        Area =  new String(area.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getFitment() {
        return Fitment;
    }

    public void setFitment(String fitment) throws UnsupportedEncodingException {
        Fitment = new String(fitment.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getDirection() {
        return Direction;
    }

    public void setDirection(String direction) throws UnsupportedEncodingException {
        Direction =  new String(direction.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getFloor() {
        return Floor;
    }

    public void setFloor(String floor) throws UnsupportedEncodingException {
        Floor =  new String(floor.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getFloorNum() {
        return FloorNum;
    }

    public void setFloorNum(String floorNum) {
        FloorNum = floorNum;
    }

    public String getBuildNum() {
        return BuildNum;
    }

    public void setBuildNum(String buildNum) {
        BuildNum = buildNum;
    }

    public String getUnitNum() {
        return UnitNum;
    }

    public void setUnitNum(String unitNum) {
        UnitNum = unitNum;
    }

    public String getRoomNum() {
        return RoomNum;
    }

    public void setRoomNum(String roomNum) {
        RoomNum = roomNum;
    }

    public String getRentNum() {
        return RentNum;
    }

    public void setRentNum(String rentNum) {
        RentNum = rentNum;
    }

    public String getDepositType() {
        return DepositType;
    }

    public void setDepositType(String depositType) {
        DepositType = depositType;
    }

    public String getSupport() {
        return Support;
    }

    public void setSupport(String support) {
        Support = support;
    }

    public String getCheckInTime() {
        return CheckInTime;
    }

    public void setCheckInTime(String checkInTime) {
        CheckInTime = checkInTime;
    }
}
