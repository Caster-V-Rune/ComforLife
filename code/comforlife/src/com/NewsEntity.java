package com;

import javax.persistence.*;
import java.sql.Timestamp;

/**
 * Created by Administrator on 2016/3/14.
 */
@Entity
@Table(name = "news", schema = "", catalog = "comforlife")
public class NewsEntity {
    private int id;
    private String title;
    private String author;
    private String desc;
    private Timestamp time;
    private int click;
    private int top;

    @Id
    @Column(name = "ID", nullable = false, insertable = true, updatable = true)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "title", nullable = false, insertable = true, updatable = true, length = 100)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "author", nullable = true, insertable = true, updatable = true, length = 100)
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
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
    @Column(name = "time", nullable = false, insertable = true, updatable = true)
    public Timestamp getTime() {
        return time;
    }

    public void setTime(Timestamp time) {
        this.time = time;
    }

    @Basic
    @Column(name = "click", nullable = false, insertable = true, updatable = true)
    public int getClick() {
        return click;
    }

    public void setClick(int click) {
        this.click = click;
    }

    @Basic
    @Column(name = "top", nullable = false, insertable = true, updatable = true)
    public int getTop() {
        return top;
    }

    public void setTop(int top) {
        this.top = top;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        NewsEntity that = (NewsEntity) o;

        if (click != that.click) return false;
        if (id != that.id) return false;
        if (top != that.top) return false;
        if (author != null ? !author.equals(that.author) : that.author != null) return false;
        if (desc != null ? !desc.equals(that.desc) : that.desc != null) return false;
        if (time != null ? !time.equals(that.time) : that.time != null) return false;
        if (title != null ? !title.equals(that.title) : that.title != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (author != null ? author.hashCode() : 0);
        result = 31 * result + (desc != null ? desc.hashCode() : 0);
        result = 31 * result + (time != null ? time.hashCode() : 0);
        result = 31 * result + click;
        result = 31 * result + top;
        return result;
    }
}
