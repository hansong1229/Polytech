package com.polytech.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.polytech.entity.Member;



@Mapper
public interface MemberMapper {

	List<Member> getMembers();
}