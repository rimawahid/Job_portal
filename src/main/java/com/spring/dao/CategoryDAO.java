package com.spring.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.spring.model.Category;




@Repository(value = "categoryDAO")
@Transactional
public class CategoryDAO {
	@Autowired
	private EntityManager entityManager;

	private Session getSession() {
		return entityManager.unwrap(Session.class);
	}

	public Category save(Category category) {
		getSession().save(category);
		getSession().flush();
		return category;
	}

	public List<Category> getAll() {
		String sql = "from category";
		List<Category> categories = getSession().createQuery(sql).list();
		return categories;
	}
	
	 public Category getProductById(int pid) {
	        String sql = "from category where id = '" + pid + "'";
	        List<Category> catList = getSession().createQuery(sql).list();
	        return catList.get(0);

	    }
	
	 public Category update(Category category) {
	        String hql = "update category set code = '"+category.getCode()+"', name = '"+category.getName()+"' where id = '"+category.getId()+"'";
	        Query q = getSession().createQuery(hql);
	        q.executeUpdate();
	        getSession().flush();
	        return category;
	    }
	 
	  public Category delete(Category category) {
	    	String sql = "delete category where id = '"+category.getId()+"'";
	        int delete = getSession().createQuery(sql).executeUpdate();
	        return category;
	    }
}
