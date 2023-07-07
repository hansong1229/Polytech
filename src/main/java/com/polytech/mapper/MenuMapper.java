package com.polytech.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Update;

import com.polytech.entity.Menu;


@Mapper
public interface MenuMapper {

	public List<Menu> MenuList();

}
