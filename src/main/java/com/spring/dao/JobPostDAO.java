package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Category;
import com.spring.model.JobPost;

@Repository(value = "jobPostDAO")
@Transactional
public class JobPostDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	
	public JobPost save(JobPost jobPost) {
		getSession().save(jobPost);
		getSession().flush();
		return jobPost;
	}
	
	public List<JobPost> getAll() {
		String sql = "from jobpost";
		List<JobPost> jobPosts = getSession().createQuery(sql).list();
		return jobPosts;
	}
	
	public JobPost getProductById(int pid) {
        String sql = "from jobpost where id = '" + pid + "'";
        List<JobPost> catList = getSession().createQuery(sql).list();
        return catList.get(0);

    }
}
