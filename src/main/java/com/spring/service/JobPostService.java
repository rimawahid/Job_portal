package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.spring.dao.JobPostDAO;

import com.spring.model.Jobpost;

@Service(value = "jobPostService")
public class JobPostService {
	@Autowired
	JobPostDAO jobPostDAO;
	
	public Jobpost save(Jobpost jobpost){
 return jobPostDAO.save(jobpost);
    }
}
