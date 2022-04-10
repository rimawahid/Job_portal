package com.spring.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.RejectedStatusDAO;
import com.spring.model.ApplyJob;
import com.spring.model.RejectedStatus;
@Service(value = "rejectedStatusService")
public class RejectedStatusService {
	@Autowired
	RejectedStatusDAO rejectedStatusDAO;
	
	@Autowired
	ApplyJobService applyJobService;
	
	public RejectedStatus save(ApplyJob applyJob) {
		//System.out.println(request.getParameter("id"));
		RejectedStatus a = new RejectedStatus();
		a.setTitle(applyJob.getTitle());
		a.setBudget(applyJob.getBudget());
		a.setBidAmount(applyJob.getBidAmount());
		a.setDeliveryTime(applyJob.getDeliveryTime());
		a.setFreelancer(applyJob.getFreelancer());
		a.setProposalDate(applyJob.getProposalDate());
		a.setStatus(applyJob.getStatus());
		return rejectedStatusDAO.save(a);
	}
}
