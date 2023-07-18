package com.polytech.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.polytech.entity.Member;
import com.polytech.mapper.MemberMapper;

@Controller
public class MemberController {
    private final MemberMapper memberMapper;

    @Autowired
    public MemberController(MemberMapper memberMapper) {
        this.memberMapper = memberMapper;
    }

    @RequestMapping("/memberList")
    public String memberList(Model model) {
        List<Member> members = memberMapper.getMembers();
        model.addAttribute("members", members);
        return "member/memberList";
    }
  
}

