package com;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 * Created by leyang on 2016/3/17.
 */
public class addRentHouse extends ActionSupport {
    private String HomeType;
    private String user_id;
    private String RentType;

    private String HomeArea;

    private String BusiArea;

    public void setBusiArea(String busiArea) throws UnsupportedEncodingException {
        BusiArea = new String(busiArea.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getBusiArea() {
        return BusiArea;
    }

    private String News;

    public void setNews(String news) {
        News = news;
    }

    public String getNews() {
        return News;
    }

    private String ConName;

    public void setConName(String conName) throws UnsupportedEncodingException {
        ConName = conName;
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
        Title =  title;
    }

    public String getTitle() {
        return Title;
    }

    private String Descri;

    public void setDescri(String descri) throws UnsupportedEncodingException {
        Descri =  descri;
    }

    public String getDescri() {
        return Descri;
    }

    private String CheckInTime;
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

    public void setFloorNum(String floorNum) throws UnsupportedEncodingException
    {
        FloorNum = new String(floorNum.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getBuildNum() {
        return BuildNum;
    }

    public void setBuildNum(String buildNum)throws UnsupportedEncodingException
    {
        BuildNum =new String(buildNum.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getUnitNum() {
        return UnitNum;
    }

    public void setUnitNum(String unitNum) throws UnsupportedEncodingException
    {
        UnitNum = new String(unitNum.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getRoomNum() {
        return RoomNum;
    }

    public void setRoomNum(String roomNum) throws UnsupportedEncodingException
    {
        RoomNum = new String(roomNum.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getRentNum() {
        return RentNum;
    }

    public void setRentNum(String rentNum) throws UnsupportedEncodingException
    {
        RentNum =new String(rentNum.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getDepositType() {
        return DepositType;
    }

    public void setDepositType(String depositType) throws UnsupportedEncodingException
    {
        DepositType =new String(depositType.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getSupport() {
        return Support;
    }

    public void setSupport(String support) throws UnsupportedEncodingException
    {
        Support =new String(support.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getCheckInTime() {
        return CheckInTime;
    }

    public void setCheckInTime(String checkInTime) throws UnsupportedEncodingException
    {
        CheckInTime = new String(checkInTime.getBytes("iso-8859-1"),"UTF-8");
    }


    private String Latlng;

    public void setLatlng(String latlng)  throws UnsupportedEncodingException{
        Latlng = new String(latlng.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getLatlng() {
        return Latlng;
    }

    private String Cert1;

    public String getCert1() {
        return Cert1;
    }

    public void setCert1(String cert1) {
        Cert1 = cert1;
    }

    private String Cert2;

    public void setCert2(String cert2) throws UnsupportedEncodingException{
        Cert2 = new String(cert2.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getCert2() {
        return Cert2;
    }

    private String Cert3;

    public String getCert3() {
        return Cert3;
    }

    public void setCert3(String cert3) throws UnsupportedEncodingException {
        Cert3 =  new String(cert3.getBytes("iso-8859-1"),"UTF-8");
    }

    public String redir()
    {
        return "yes";
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }
    private String pic;

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
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
        //renthomeEntity.setSupport(new Integer(new Integer(Support)));
        renthomeEntity.setTitle(Title);
        renthomeEntity.setDescri(Descri);
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        Date date = new Date(sdf.parse(CheckInTime).getTime());
        renthomeEntity.setCheckInTime(date);
        renthomeEntity.setLatlng(Latlng);
        renthomeEntity.setUserId(new Integer(user_id));


        String[]strArr =  pic.split(";");
        if (strArr.length == 2)
        {
            renthomeEntity.setCert1(strArr[1].trim());
        }
        if(strArr.length == 3)
        {
            renthomeEntity.setCert1(strArr[1].trim());
            renthomeEntity.setCert2(strArr[2].trim());
        }
        if (strArr.length == 4)
        {
            renthomeEntity.setCert1(strArr[1].trim());
            renthomeEntity.setCert2(strArr[2].trim());
            renthomeEntity.setCert3(strArr[3].trim());
        }
        renthomeEntity.setCheckIn(1);
        renthomeEntity.setAttention(0);
        hibernateOperation.insertRentHouse(renthomeEntity);
        return "yes";
    }





}


