package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.ApplyJob;


@Repository(value = "applyJobDAO")
@Transactional
public class ApplyJobDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public ApplyJob save(ApplyJob applyJob) {
		getSession().save(applyJob);
		getSession().flush();
		return applyJob;
	}

	public List<ApplyJob> getByTitle(String title) {
		String hqlQuery = "from applyjob where title = :title and status ='pending'";
		Query query = getSession().createQuery(hqlQuery);
		query.setParameter("title", title);
		System.out.println("search" + title);
		List<ApplyJob> flightList = query.list();
		getSession().flush();

		return flightList;
	}

	public ApplyJob getById(int pid) {
		String sql = "from applyjob where id = '" + pid + "'";
		List<ApplyJob> catList = getSession().createQuery(sql).list();
		return catList.get(0);

	}

	public ApplyJob approvedStatus(ApplyJob applyJob) {
		String hql = "update applyjob set status ='approved' where id = '" + applyJob.getId() + "'";
		Query q = getSession().createQuery(hql);
		q.executeUpdate();
		getSession().flush();
		return (ApplyJob) applyJob;
	}
	
	public ApplyJob rejectedStatus(ApplyJob applyJob) {
		String hql = "update applyjob set status ='rejected' where id = '" + applyJob.getId() + "'";
		Query q = getSession().createQuery(hql);
		q.executeUpdate();
		getSession().flush();
		return (ApplyJob) applyJob;
	}
		
	public List<ApplyJob> findByApproved(String status) {
		String sql = "from applyjob where status = '" + "approved" + "'";
        List<ApplyJob> approvedList = getSession().createQuery(sql).list();
        return approvedList;

	}
	public List<ApplyJob> findByRejected(String status) {
		String sql = "from applyjob where status = '" + "rejected" + "'";
        List<ApplyJob> approvedList = getSession().createQuery(sql).list();
        return approvedList;

	}

}
