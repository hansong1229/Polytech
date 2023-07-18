package com.polytech.controller;

<<<<<<< HEAD
import java.util.List;
=======

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
>>>>>>> branch 'master' of https://github.com/hansong1229/polytech.git

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
=======
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
>>>>>>> branch 'master' of https://github.com/hansong1229/polytech.git

import com.polytech.entity.Acdm;
import com.polytech.entity.Career;
<<<<<<< HEAD
import com.polytech.entity.Employment;
import com.polytech.entity.License;
import com.polytech.entity.Resume;
import com.polytech.mapper.MemberMapper;
=======
import com.polytech.entity.License;
import com.polytech.entity.User;
>>>>>>> branch 'master' of https://github.com/hansong1229/polytech.git
import com.polytech.mapper.ResumeMapper;


@Controller
public class ResumeController {
	private final ResumeMapper resumeMapper;
	
	@Autowired
    public ResumeController(ResumeMapper resumeMapper) {
        this.resumeMapper = resumeMapper;
    }
	
	@RequestMapping("/acdmList")
	public String acdmList(Model model) {
		List<Acdm> acdmList= resumeMapper.getAcdms();
		model.addAttribute("acdmList",acdmList);
		return "acdmList";
	}
	
	@RequestMapping("/careerList")
	public String careerList(Model model) {
		List<Career> careerList= resumeMapper.getCareers();
		model.addAttribute("careerList", careerList);
		return "careerList";
	}
	
	@RequestMapping("/employmentList")
	public String employmentList(Model model) {
		List<Employment> employmentList= resumeMapper.getEmployments();
		model.addAttribute("employmentList", employmentList);
		return "employmentList";
	}
	

	
<<<<<<< HEAD
	@RequestMapping("/licenseList")
	public String licenseList(Model model) {
		List<License> licenseList= resumeMapper.getLicenses();
		model.addAttribute("licenseList", licenseList);
		return "licenseList";
	}
	
	@RequestMapping("/resume")
	public String resumeList(Model model) {
		List<Resume> resumeList=resumeMapper.getResume();
		for(int i = 0 ; i<resumeList.size(); i++) {
			System.out.println(resumeList.toString());
		}
		model.addAttribute("resume", resumeList);
		return "member/resume";
	}
	
=======
	  @PostMapping("/createResume.do")
      public String createResume(MultipartFile[] upload, HttpServletRequest request, User u, License l, Career c, Acdm a, HttpSession session) {

          //파일이 업로드 될 경로 설정
          String saveDir = request.getSession().getServletContext().getRealPath("/resources/upload/file");

          //위에서 설정한 경로의 폴더가 없을 경우 생성
          File dir = new File(saveDir);
          if(!dir.exists()) {
              dir.mkdirs();
          }

          // 파일 업로드
          for(MultipartFile f : upload) {
              if(!f.isEmpty()) {
                  // 기존 파일 이름을 받고 확장자 저장
                  String orifileName = f.getOriginalFilename();
                  String ext = orifileName.substring(orifileName.lastIndexOf("."));

                  // 이름 값 변경을 위한 설정
                  SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd-HHmmssSSS");
                  int rand = (int)(Math.random()*1000);

                  // 파일 이름 변경
                  String reName = sdf.format(System.currentTimeMillis()) + "_" + rand + ext;

                  // 파일 저장
                  try {
                      f.transferTo(new File(saveDir + "/" + reName));
                  }catch (IllegalStateException | IOException e) {
                      e.printStackTrace();
                  }
              }
          }
          
          
        return "redirect:/";
    };
>>>>>>> branch 'master' of https://github.com/hansong1229/polytech.git

	
}
