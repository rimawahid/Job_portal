package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.JobPostDAO;
import com.spring.model.JobPost;

@Service(value = "jobPostService")
public class JobPostService {
	@Autowired
	JobPostDAO jobPostDAO;
	
	public JobPost save (JobPost p) {
		return jobPostDAO.save(p);
	}
}
