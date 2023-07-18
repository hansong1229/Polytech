package com.polytech.controller;




import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.polytech.entity.test1;
import com.polytech.entity.test2;
import com.polytech.mapper.Test1Mapper;
import com.polytech.mapper.Test2Mapper;


@Controller
public class TestController {

    // 파일이 저장될 디렉토리 경로 설정
    private static String UPLOAD_DIR = "C:/uploads/";
	
	@Autowired
	private Test1Mapper t1mapper;
	
	@Autowired
	private Test2Mapper t2mapper;
	
	@PostMapping("/testSubmit.do")
	public String testSubmit(test1 t1, test2 t2, Model model, MultipartFile singleFile, HttpServletRequest request) {
		System.out.println(t1.getTest_name());
		System.out.println(t1.getTest_age());
		System.out.println(t2.getTest_state());

	

        
		String[] state = t2.getTest_state().split(",");
		
		for(int i = 0 ; i <state.length; i++) {
			System.out.println(state[i]);
		}
		
		
//		t1mapper.insertTest1(t1);
//		test1 t = t1mapper.selectTest1(t1);
//		t2.setTest_seq(t.getTest_seq());
//		for(int i = 0 ; i<state.length; i++) {
//			
//		
//		t2.setTest_state(state[i]);
//		t2mapper.insertTest2(t2);
//		};
//		
		
		// 1. 전송받은 파일 및 파일설명 값 가져오기
				
				// 2. 저장할 경로 가져오기
				String path = request.getSession().getServletContext().getRealPath("resources");
				System.out.println("path : " + path);
				String root = path + "\\uploadFiles" ;
				
				File file = new File(root);
				
				// 만약 uploadFiles 폴더가 없으면 생성해라 라는뜻
				if(!file.exists()) file.mkdirs();
				
				// 업로드할 폴더 설정
				String originFileName = singleFile.getOriginalFilename();
				System.out.println(originFileName);
				String ext = originFileName.substring(originFileName.lastIndexOf("."));
				String ranFileName = UUID.randomUUID().toString() + ext;
				File changeFile = new File(root + "\\" + ranFileName);
				
				// 파일업로드
				try {
					singleFile.transferTo(changeFile);
					System.out.println("파일 업로드 성공");
					t1.setTest_picture(root + "\\" + ranFileName);
					t1mapper.insertTest1(t1);
					test1 t = t1mapper.selectTest1(t1);
					t2.setTest_seq(t.getTest_seq());
					for(int i = 0 ; i<state.length; i++) {
					t2.setTest_state(state[i]);
					t2mapper.insertTest2(t2);
					};
				} catch (IllegalStateException | IOException e) {
					System.out.println("파일 업로드 실패");
					e.printStackTrace();
				}
		
		
		return "redirect:/";
	}
	
}
