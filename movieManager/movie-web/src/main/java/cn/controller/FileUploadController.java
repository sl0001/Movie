package cn.controller;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping(value = "/fileuploadMovieImg/")
public class FileUploadController {
    @RequestMapping(value = "/uploadFilmImg")
    @ResponseBody
    public String filmPhotoUpload(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        // 1、创建DiskFileItemFactory对象,目的是创建FileItem工厂,FileItem--><input>
        DiskFileItemFactory facotry = new DiskFileItemFactory();

        // 2、创建ServletFileUpload对象,此对象是真正处理文件上传的
        ServletFileUpload sfup = new ServletFileUpload(facotry);

        sfup.setHeaderEncoding("UTF-8");

        String fileName = null;
        // 4、解析请求,目的是拿到FileItem对象的List集合
        try {
            List<FileItem> fileItems = sfup.parseRequest(req);

            if(fileItems != null && fileItems.size() > 0){
                String path = req.getServletContext().getRealPath("/movieImg/filmImg/");
                File destPath = new File(path);

                if(!destPath.exists()){
                    destPath.mkdirs();
                }
                for (FileItem item : fileItems) {
                    if(!item.isFormField()){

                        fileName = item.getName();

                        String overFile = path+ fileName;
                        item.write(new File(overFile));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/movieImg/filmImg/"+fileName;
    }

    @RequestMapping(value = "/uploadCinemaImg")
    @ResponseBody
    public String cinemaPhotoUpload(HttpServletRequest req, HttpServletResponse resp) throws Exception {
        // 1、创建DiskFileItemFactory对象,目的是创建FileItem工厂,FileItem--><input>
        DiskFileItemFactory facotry = new DiskFileItemFactory();

        // 2、创建ServletFileUpload对象,此对象是真正处理文件上传的
        ServletFileUpload sfup = new ServletFileUpload(facotry);

        sfup.setHeaderEncoding("UTF-8");

        String fileName = null;
        // 4、解析请求,目的是拿到FileItem对象的List集合
        try {
            List<FileItem> fileItems = sfup.parseRequest(req);
            if(fileItems != null && fileItems.size() > 0){
                String path = req.getServletContext().getRealPath("/movieImg/cinemaImg/");
                System.out.println(path);
                File destPath = new File(path);

                if(!destPath.exists()){
                    destPath.mkdirs();
                }
                for (FileItem item : fileItems) {
                    if(!item.isFormField()){

                        fileName = item.getName();
                        System.out.println(fileName);

                        String overFile = path+ fileName;
                        System.out.println(overFile);
                        item.write(new File(overFile));
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/movieImg/cinemaImg/"+fileName;
    }


    }






















