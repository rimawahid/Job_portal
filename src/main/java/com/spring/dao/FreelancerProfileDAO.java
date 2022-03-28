package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.spring.model.FreelancerProfile;
import com.spring.model.JobPost;

@Repository(value = "freelancerProfileDAO")
@Transactional
public class FreelancerProfileDAO {
	@Autowired
	private EntityManager entityManager;
	
	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	
	public FreelancerProfile save(FreelancerProfile freelancerProfile) {
		getSession().save(freelancerProfile);
		getSession().flush();
		return freelancerProfile;
	}
	
	public List<FreelancerProfile> getAll() {
		String sql = "from jobpost";
		List<FreelancerProfile> fProfile = getSession().createQuery(sql).list();
		return fProfile;
	}
	
	public FreelancerProfile update(FreelancerProfile freelancerProfile) {
		getSession().update(freelancerProfile);
		getSession().flush();
		return freelancerProfile;
	}
	
	public FreelancerProfile delete(FreelancerProfile freelancerProfile) {
        getSession().delete(freelancerProfile);
        getSession().flush();
        return freelancerProfile;
    }
	
	 
    public FreelancerProfile getprofileById(int pid) {
        String sql = "from jobpost where id = '" + pid + "'";
        List<FreelancerProfile> profileList = getSession().createQuery(sql).list();  
        return profileList.get(0);

    }
}
