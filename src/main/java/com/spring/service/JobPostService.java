package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.JobPostDAO;
import com.spring.model.ApplyJob;
import com.spring.model.Category;
import com.spring.model.JobPost;
import com.spring.model.User;

@Service(value = "jobPostService")
public class JobPostService {
	@Autowired
	JobPostDAO jobPostDAO;
	
	public JobPost save (JobPost j) {
		return jobPostDAO.save(j);
	}
	
	public List<JobPost> getAll(){
		return jobPostDAO.getAll();
	}
	
	public List<JobPost> getByStatus(){
		return jobPostDAO.getByStatus();
	}
	
	public JobPost getProductById(int pid) {
        return jobPostDAO.getProductById(pid);
    }
	public JobPost update (JobPost j) {
		return jobPostDAO.update(j);
	}

	 public JobPost delete(int pid) {
		 JobPost jobPost = jobPostDAO.getProductById(pid);
	        return jobPostDAO.delete(jobPost);
	    }
	 
	 public List<JobPost> getDetails(String title) {
         return jobPostDAO.getDetails(title);
    }
	 
	 public JobPost getBYTitle(String title) {
			return jobPostDAO.getByTitle(title);
		}
	 
	public JobPost updateStatus(JobPost jobPost) {
			return jobPostDAO.updateStatus(jobPost);
		}
		
	public List<JobPost> searchBySkills(String skill) {
		return  jobPostDAO.searchBySkills(skill);
	}
	
	
	 
}
