package com.spring.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name = "jobpost")
@Table(name = "jobpost")
public class JobPost {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "category")
	private String category;

	@Column(name = "title")
	private String title;

	@Column(name = "description")
	private String description;

	@Column(name = "budget")
	private Double budget;

	@Column(name = "budgetType")
	private String budgetType;
	
//	@Temporal(TemporalType.DATE)
	@Column(name = "posted_time")
	private Date posted_time;
	
//	@Temporal(TemporalType.DATE)
	@Column(name = "delivery_deadline")
	private Date delivery_deadline;

	public Date getPosted_time() {
		return posted_time;
	}

	public void setPosted_time(Date posted_time) {
		this.posted_time = posted_time;
	}

	public Date getDelivery_deadline() {
		return delivery_deadline;
	}

	public void setDelivery_deadline(Date delivery_deadline) {
		this.delivery_deadline = delivery_deadline;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Double getBudget() {
		return budget;
	}

	public void setBudget(Double budget) {
		this.budget = budget;
	}

	public String getBudgetType() {
		return budgetType;
	}

	public void setBudgetType(String budgetType) {
		this.budgetType = budgetType;
	}

	

	
	
	
	
}
