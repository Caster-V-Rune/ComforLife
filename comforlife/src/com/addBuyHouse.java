package com;

import com.opensymphony.xwork2.ActionSupport;

import java.io.UnsupportedEncodingException;
import java.sql.Date;
import java.text.SimpleDateFormat;

/**
 * Created by leyang on 2016/3/17.
 */
public class addBuyHouse  extends ActionSupport {
    private String HomeType;



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


    private String TotalFloor;


    private String BuildNum;


    private String UnitNum;


    private String RoomNum;



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

    public void setCert1(String cert1)   throws UnsupportedEncodingException{
        Cert1 = new String(cert1.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getCert1() {
        return Cert1;
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

    public String UnitPrice;

    public void setUnitPrice(String unitPrice)  throws UnsupportedEncodingException {
        UnitPrice = new String(unitPrice.getBytes("iso-8859-1"),"UTF-8");
    }

    public String getUnitPrice() {
        return UnitPrice;
    }

    public String getTotalFloor() {
        return TotalFloor;
    }

    public void setTotalFloor(String totalFloor) {
        TotalFloor = totalFloor;
    }

    private String user_id;
    private String pic;

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }
    private String fs;

    public String getFs() {
        return fs;
    }

    public void setFs(String fs) {
        this.fs = fs;
    }

    public String redir()
    {
        return "yes";
    }
    public String execute() throws Exception {

        SalehomeEntity salehomeEntity = new SalehomeEntity();
        salehomeEntity.setHomeType(new Integer(HomeType));
        salehomeEntity.setHomeArea(HomeArea);
        salehomeEntity.setBusiArea(BusiArea);
        salehomeEntity.setConName(ConName);
        salehomeEntity.setRoom(new Integer(Room));
        salehomeEntity.setHall(new Integer(Hall));
        salehomeEntity.setToilet(new Integer(Toilet));
        salehomeEntity.setArea(new Integer(Area));
        salehomeEntity.setFitment(new Integer(Fitment));
        salehomeEntity.setDirection(new Integer(Direction));
        salehomeEntity.setFloor(new Integer(Floor));
        salehomeEntity.setTotalFloor(new Integer(TotalFloor));
        salehomeEntity.setBuildNum(new Integer(BuildNum));
        salehomeEntity.setUnitPrice(new Integer(UnitPrice));
        salehomeEntity.setRoomNum(new Integer(RoomNum));
        salehomeEntity.setFs(new Integer(fs));
        salehomeEntity.setUnitNum(new Integer(UnitNum));
        //salehomeEntity.setSupport(new Integer(new Integer(Support)));
        salehomeEntity.setTitle(Title);
        salehomeEntity.setDescri(Descri);
        SimpleDateFormat sdf = new SimpleDateFormat("MM/dd/yyyy");
        Date date = new Date(sdf.parse(CheckInTime).getTime());
        salehomeEntity.setCheckInTime(date);
        salehomeEntity.setLatlng(Latlng);
        salehomeEntity.setUserId(new Integer(user_id));
        String[]strArr =  pic.split(";");
        if (strArr.length == 2)
        {
            salehomeEntity.setCert1(strArr[1].trim());
        }
        if(strArr.length == 3)
        {
            salehomeEntity.setCert1(strArr[1].trim());
            salehomeEntity.setCert2(strArr[2].trim());
        }
        if (strArr.length == 4)
        {
            salehomeEntity.setCert1(strArr[1].trim());
            salehomeEntity.setCert2(strArr[2].trim());
            salehomeEntity.setCert3(strArr[3].trim());
        }


        salehomeEntity.setCheckIn(1);
        salehomeEntity.setAttention(0);
        hibernateOperation.insertSaleHouse(salehomeEntity);
        return "yes";
    }

}
