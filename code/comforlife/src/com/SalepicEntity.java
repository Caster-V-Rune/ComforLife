package com;

import javax.persistence.*;
import java.util.Arrays;

/**
 * Created by Administrator on 2016/3/14.
 */
@Entity
@Table(name = "salepic", schema = "", catalog = "comforlife")
public class SalepicEntity {
    private int picId;
    private Integer homeId;
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
    @Column(name = "homeID", nullable = true, insertable = true, updatable = true)
    public Integer getHomeId() {
        return homeId;
    }

    public void setHomeId(Integer homeId) {
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

        SalepicEntity that = (SalepicEntity) o;

        if (picId != that.picId) return false;
        if (homeId != null ? !homeId.equals(that.homeId) : that.homeId != null) return false;
        if (!Arrays.equals(pic, that.pic)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = picId;
        result = 31 * result + (homeId != null ? homeId.hashCode() : 0);
        result = 31 * result + (pic != null ? Arrays.hashCode(pic) : 0);
        return result;
    }
}
