package com.polytech.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.polytech.entity.test1;
import com.polytech.entity.test2;

@Mapper
public interface Test2Mapper {

	public int insertTest2(test2 t2);


}
