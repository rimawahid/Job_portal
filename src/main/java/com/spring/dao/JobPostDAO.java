package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
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
		String sql = "from jobpost where status = 'posted'";
		List<JobPost> jobPosts = getSession().createQuery(sql).list();
		return jobPosts;
	}
		
	public JobPost update(JobPost jobPost) {
		getSession().update(jobPost);
		getSession().flush();
		return jobPost;
	}
	
	public JobPost delete(JobPost jobPost) {
        getSession().delete(jobPost);
        getSession().flush();
        return jobPost;
    }
	
	
	public List<JobPost> getDetails(String title) {
        String hqlQuery = "from jobpost where title = :title";
        Query query = getSession().createQuery(hqlQuery);
        query.setParameter("title", title);
        List<JobPost> jobpostList = query.list();
        getSession().flush();
      
        return jobpostList;
        }
    
		
    
    public JobPost getProductById(int pid) {
        String sql = "from jobpost where id = '" + pid + "'"  ;
        List<JobPost> catList = getSession().createQuery(sql).list();  
        return catList.get(0);

    }

	
}
