package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.User;



@Repository(value = "userDAO")
@Transactional
public class UserDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}
	
	public User save(User u){
    	getSession().save(u);
    	getSession().flush();
        return u;
    }
	  
	public User findByUsernameAndPassword(String email) {
		String sql = "from user where email = '" + email + "'";
        List<User> userList = getSession().createQuery(sql).list();
        return userList.get(0);

	}
	
	
}
