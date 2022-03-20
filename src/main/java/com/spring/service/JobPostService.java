package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.JobPostDAO;
import com.spring.model.Category;
import com.spring.model.JobPost;

@Service(value = "jobPostService")
public class JobPostService {
	@Autowired
	JobPostDAO jobPostDAO;
	
	public JobPost save (JobPost p) {
		return jobPostDAO.save(p);
	}
	
	public List<JobPost> getAll(){
		return jobPostDAO.getAll();
	}
	
	public JobPost getProductById(int pid) {
        return jobPostDAO.getProductById(pid);
    }
}
