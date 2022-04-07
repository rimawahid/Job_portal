package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Category;
import com.spring.model.SavedJobs;

@Repository(value = "savedJobsDAO")
@Transactional
public class SavedJobsDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public SavedJobs save(SavedJobs savedjobs) {
		getSession().save(savedjobs);
		getSession().flush();
		return savedjobs;
	}
	
	public List<SavedJobs> getAll() {
		String sql = "from savedjobs";
		List<SavedJobs> savedJobs = getSession().createQuery(sql).list();
		return savedJobs;
	}
	
}
