package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.dao.FreelancerProfileDAO;
import com.spring.model.FreelancerProfile;

@Service(value = "freelancerProfileService")
public class FreelancerProfileService {
	@Autowired
	FreelancerProfileDAO freelancerProfileDAO;
	
	public FreelancerProfile save(FreelancerProfile freelancerProfile){
        return freelancerProfileDAO.save(freelancerProfile);
    }
	
	public List<FreelancerProfile> getAll(){
		return freelancerProfileDAO.getAll();
	}
	
	public FreelancerProfile getProductById(int pid) {
        return freelancerProfileDAO.getprofileById(pid);
    }
	
	public FreelancerProfile update (FreelancerProfile fProfile) {
		return freelancerProfileDAO.update(fProfile);
	}
	
	 public FreelancerProfile delete(int pid) {
		 FreelancerProfile fProfile = freelancerProfileDAO.getprofileById(pid);
	        return freelancerProfileDAO.delete(fProfile);
	    }
}
