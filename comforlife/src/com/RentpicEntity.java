package com;

import javax.persistence.*;
import java.util.Arrays;

/**
 * Created by Administrator on 2016/3/18.
 */
@Entity
@Table(name = "rentpic", schema = "", catalog = "comforlife")
public class RentpicEntity {
    private int picId;
    private int homeId;
    private byte[] pic;

    @Id
    @Column(name = "picID", nullable = false, insertable = true, updatable = true)
    public int getPicId() {
        return picId;
    }

    public void setPicId(int picId) {
        this.picId = picId;
    }

    @Basic
    @Column(name = "homeID", nullable = false, insertable = true, updatable = true)
    public int getHomeId() {
        return homeId;
    }

    public void setHomeId(int homeId) {
        this.homeId = homeId;
    }

    @Basic
    @Column(name = "pic", nullable = true, insertable = true, updatable = true)
    public byte[] getPic() {
        return pic;
    }

    public void setPic(byte[] pic) {
        this.pic = pic;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        RentpicEntity that = (RentpicEntity) o;

        if (homeId != that.homeId) return false;
        if (picId != that.picId) return false;
        if (!Arrays.equals(pic, that.pic)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = picId;
        result = 31 * result + homeId;
        result = 31 * result + (pic != null ? Arrays.hashCode(pic) : 0);
        return result;
    }
}
