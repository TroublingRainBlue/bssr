package cn.connext.bbs.entity;

import java.util.Date;

/**
 *  文章模块，对应数据库里的article表
 */
public class Article {
    //
    private int id;
    private int userid;
    private String title;
    private String author;
    private Date date;
    private String content;

    public String getIsjiajing() {
        return isjiajing;
    }

    public void setIsjiajing(String isjiajing) {
        this.isjiajing = isjiajing;
    }

    private String isjiajing;
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
