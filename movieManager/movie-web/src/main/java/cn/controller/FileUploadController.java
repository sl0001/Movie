package cn.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

@RequestMapping("/fileupload")
public class FileUploadController{
    @RequestMapping("/filmPhotoUpload")
    @ResponseBody
    public String filmPhotoUpload(HttpServletRequest request, MultipartFile touxiang) throws Exception{

        // 1、得到文件上传的路径
        String path = request.getServletContext().getRealPath("/upload/filmPhotoUpload");
        File destPath = new File(path);
        if(!destPath.exists()){
            destPath.mkdirs();
        }

        // 获得名称
        String name = touxiang.getName();
        System.out.println(name);

        // 获得原始名称
        String originalFilename = touxiang.getOriginalFilename();
        System.out.println(originalFilename);

        // 文件上传
        touxiang.transferTo(new File(destPath,originalFilename));
        return "/upload/filmPhotoUpload"+name ;
    }
}





















