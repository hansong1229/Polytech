package com.polytech.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.polytech.entity.Acdm;
import com.polytech.entity.Career;
import com.polytech.entity.Employment;
import com.polytech.entity.License;
import com.polytech.entity.Resume;
import com.polytech.mapper.MemberMapper;
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
	

	
}
