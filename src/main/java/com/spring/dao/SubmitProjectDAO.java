package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.spring.model.SubmitProject;


@Repository(value = "submitProjectDAO")
@Transactional
public class SubmitProjectDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public SubmitProject save(SubmitProject submitProject) {
		getSession().save(submitProject);
		getSession().flush();
		return submitProject;
	}
	
	public List<SubmitProject> getAll() {
		String sql = "from submitProject";
		List<SubmitProject> submitProject = getSession().createQuery(sql).list();
		return submitProject;
	}
}
