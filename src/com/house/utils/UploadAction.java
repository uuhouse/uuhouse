package com.house.utils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
/**
 * 使用数组上传多个文件
 * <s:file/>标志将文件上传控件绑定到Action的myFile属性
 */
@SuppressWarnings("serial")
public class UploadAction extends ActionSupport{
    private File[] image; //上传的图片
    private String[] imageFileName; //图片名称
    private String[] imageContentType; //图片类型
    private String savePath;   //保存路径
    

    public File[] getImage() {
        return image;
    }

    public void setImage(File[] image) {
        this.image = image;
    }

    public String[] getImageFileName() {
        return imageFileName;
    }

    public void setImageFileName(String[] imageFileName) {
        this.imageFileName = imageFileName;
    }

    public String[] getImageContentType() {
        return imageContentType;
    }

    public void setImageContentType(String[] imageContentType) {
        this.imageContentType = imageContentType;
    }
    
    /**
     * 返回上传文件保存的位置
     * 
     * @return
     * @throws Exception
     */
    public String getSavePath() throws Exception {
        return ServletActionContext.getServletContext().getRealPath(savePath);
    }

    public void setSavePath(String savePath) {
        this.savePath = savePath;
    }

    @Override
    public String execute() throws Exception {
        ServletActionContext.getRequest().setCharacterEncoding("UTF-8");
        //取得需要上传的文件数组
        File[] files = getImage();
        if (files !=null && files.length > 0) {
            for (int i = 0; i < files.length; i++) {
                //建立上传文件的输出流, getImageFileName()[i]
                System.out.println(getSavePath() + "\\" + getImageFileName()[i]);
                FileOutputStream fos = new FileOutputStream(getSavePath() + "\\" + getImageFileName()[i]);
                //建立上传文件的输入流
                FileInputStream fis = new FileInputStream(files[i]);
                byte[] buffer = new byte[1024];
                int len = 0;
                while ((len=fis.read(buffer))>0) {
                    fos.write(buffer, 0, len);
                }
                fos.close();
                fis.close();
            }
        }
        return SUCCESS;
    }

}
