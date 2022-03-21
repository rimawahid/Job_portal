package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.JobPostDAO;
import com.spring.model.Category;
import com.spring.model.JobPost;

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
	
	public JobPost getProductById(int pid) {
        return jobPostDAO.getProductById(pid);
    }
	public JobPost update (JobPost j) {
		return jobPostDAO.update(j);
	}
	
//	public JobPost update(HttpServletRequest request) {
//        //String name = request.getParameter("name");
//		JobPost jobPost = new JobPost();
//		jobPost.setId(Integer.valueOf(request.getParameter("id")));
//		jobPost.setTitle(request.getParameter("title"));
//		jobPost.setDescription(request.getParameter("description"));
//		jobPost.setBudget(Double.valueOf(request.getParameter("budget")));
//		//jobPost.setDelivery_deadline(Date.valueOf(request.getParameter("budget")));
//		return jobPostDAO.update(jobPost);
//    }
//	
	
	 public JobPost delete(int pid) {
		 JobPost jobPost = jobPostDAO.getProductById(pid);
	        return jobPostDAO.delete(jobPost);
	    }
}
