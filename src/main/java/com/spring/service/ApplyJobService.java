package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.dao.ApplyJobDAO;
import com.spring.model.ApplyJob;
import com.spring.model.JobPost;
import com.spring.model.User;

@Service(value = "applyJobService")
public class ApplyJobService {
	@Autowired
	ApplyJobDAO applyJobDAO;

	@Autowired
	JobPostService jobPostService;

	public ApplyJob save(ApplyJob applyJob) {
		return applyJobDAO.save(applyJob);
	}

	public List<ApplyJob> getByTitle(String title) {
		return applyJobDAO.getByTitle(title);
	}

	public ApplyJob getById(int pid) {
		return applyJobDAO.getById(pid);
	}

	public ApplyJob approvedStatus(ApplyJob approved) {
		JobPost jpost = jobPostService.getBYTitle(approved.getTitle());
		jobPostService.updateStatus(jpost);
		return applyJobDAO.approvedStatus(approved);
	}

	public List<ApplyJob> findByApproved(String status) {
		return applyJobDAO.findByApproved(status);
	}
}