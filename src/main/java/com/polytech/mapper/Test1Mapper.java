package com.polytech.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.polytech.entity.test1;

@Mapper
public interface Test1Mapper {

	public int insertTest1(test1 t1);

	public test1 selectTest1(test1 t1);




}
