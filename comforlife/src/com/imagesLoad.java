package com;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.io.File;
import java.io.IOException;
import java.util.Random;

/**
 * Created by Administrator on 2016/3/18.
 */
public class imagesLoad extends ActionSupport {
    private File file;

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

    private String user_id;

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    private String path;

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    @Override
    public String execute() throws Exception {
        Random ne=new Random();
        int x =ne.nextInt(9999-1000+1)+1000;
        String fileTestFileName = String.valueOf(System.currentTimeMillis()) +".jpg";
        String realPath = ServletActionContext.getServletContext().getRealPath("/images");//实际路径
        path = "/images/"+fileTestFileName;
        File saveFile = new File(new File(realPath),fileTestFileName);  //在该实际路径下实例化一个文件
        if(!saveFile.getParentFile().exists()){
            saveFile.getParentFile().mkdirs();
        }
        try {
            //执行文件上传
            //FileUtils 类名 org.apache.commons.io.FileUtils;
            //是commons-io包中的，commons-fileupload 必须依赖 commons-io包实现文件上次，实际上就是将一个文件转换成流文件进行读写
            FileUtils.copyFile(file, saveFile);

        } catch (IOException e) {
            return "no";
        }
        return "yes";
    }


}
