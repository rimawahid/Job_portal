package com.spring.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.spring.dao.SubmitProjectDAO;
import com.spring.model.Category;
import com.spring.model.SubmitProject;

@Service(value = "submitProjectService")
public class SubmitProjectService {
	@Autowired
	SubmitProjectDAO submitProjectDAO;

	public SubmitProject save(SubmitProject s) {
		return submitProjectDAO.save(s);
	}
	
	public List<SubmitProject> getAll(){
		return submitProjectDAO.getAll();
	}
}
