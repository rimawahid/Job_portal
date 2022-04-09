package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Category;
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
	
	public List<User> findByClient(String role) {
		String sql = "from user where role = '" + "Client" + "'";
        List<User> userList = getSession().createQuery(sql).list();
        return userList;

	}
	
	public List<User> findByFreelancer(String role) {
		String sql = "from user where role = '" + "freelancer" + "'";
        List<User> userList = getSession().createQuery(sql).list();
        return userList;

	}
	
	public User getProductById(int pid) {
        String sql = "from user where id = '" + pid + "'";
        List<User> catList = getSession().createQuery(sql).list();
        return catList.get(0);

    }
	
	public User delete(User user) {
    	String sql = "delete user where id = '"+user.getUserId()+"'";
        int delete = getSession().createQuery(sql).executeUpdate();
        return user;
    }
	
	
	
}
