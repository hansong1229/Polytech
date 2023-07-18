package com.polytech.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.polytech.entity.Acdm;
import com.polytech.entity.Career;
import com.polytech.entity.Employment;
import com.polytech.entity.License;
import com.polytech.entity.Resume;

@Mapper
public interface ResumeMapper {

List<Acdm> getAcdms();

List<Career> getCareers();

List<License> getLicenses();

List<Employment> getEmployments();

List<Resume> getResume();
}
