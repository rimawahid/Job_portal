package com.spring.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.JobPostDAO;
import com.spring.dao.SavedJobsDAO;
import com.spring.model.Category;
import com.spring.model.JobPost;
import com.spring.model.SavedJobs;

@Service(value = "savedJobsService")
public class SavedJobsService {
	@Autowired
	SavedJobsDAO savedJobsDAO;
	
	@Autowired
	JobPostDAO jobPostDAO;


	@Autowired
	JobPostService jobPostService;
	
//	public JobPost getById(int pid) {
//		return jobPostDAO.getById(pid);
//	}

	public SavedJobs save(SavedJobs s, HttpServletRequest request) {
		JobPost jobpost = jobPostService.getById(Integer.valueOf(request.getParameter("id")));
		s.setCategory(jobpost.getCategory());
		s.setCode(jobpost.getCode());
		s.setTitle(jobpost.getTitle());
		s.setDescription(jobpost.getDescription());
		s.setBudget(jobpost.getBudget());
		s.setBudgetType(jobpost.getBudgetType());
		s.setJobLength(jobpost.getJobLength());
		s.setPosted_time(jobpost.getPosted_time());
		s.setDelivery_deadline(jobpost.getDelivery_deadline());
		s.setSkill(jobpost.getSkill());
		s.setAttachment(jobpost.getAttachment());
		return savedJobsDAO.save(s);
	}
	
	public List<SavedJobs> getAll(){
		return savedJobsDAO.getAll();
	}
}
