package com.spring.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity(name = "jobpost")
@Table(name = "jobpost")
public class Jobpost {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;

	@Column(name = "category")
	private String category;

	@Column(name = "jobType")
	private String jobType;

	@Column(name = "Title")
	private String title;

	@Column(name = "description")
	private String description;

	/*
	 * @Temporal(TemporalType.DATE)
	 * 
	 * @Column(name = "postedTime") private Date postedTime;
	 */

	@Column(name = "budget")
	private double budget;

	@Column(name = "budgetType")
	private String budgetType;

	/*
	 * @Temporal(TemporalType.DATE)
	 * 
	 * @Column(name = "delivaryDeadline") private Date delivaryDeadline;
	 */

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

	public String getJobType() {
		return jobType;
	}

	public void setJobType(String jobType) {
		this.jobType = jobType;
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

	/*
	 * public Date getPostedTime() { return postedTime; }
	 * 
	 * public void setPostedTime(Date postedTime) { this.postedTime = postedTime; }
	 */

	public double getBudget() {
		return budget;
	}

	public void setBudget(double budget) {
		this.budget = budget;
	}

	public String getBudgetType() {
		return budgetType;
	}

	public void setBudgetType(String budgetType) {
		this.budgetType = budgetType;
	}

//	public Date getDelivaryDeadline() {
//		return delivaryDeadline;
//	}
//
//	public void setDelivaryDeadline(Date delivaryDeadline) {
//		this.delivaryDeadline = delivaryDeadline;
//	}

	/*
	 * @Column(name = "attachment") private attachment;
	 */

}
