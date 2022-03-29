package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.dao.ApplyJobDAO;
import com.spring.model.ApplyJob;


@Service(value = "applyJobService")
public class ApplyJobService {
	@Autowired
	ApplyJobDAO applyJobDAO;

	public ApplyJob save(ApplyJob applyJob){
        return applyJobDAO.save(applyJob);
    }
	
	 public List<ApplyJob> getByJCode(String jcode) {
         return applyJobDAO.getByJCode(jcode);
    }
}
