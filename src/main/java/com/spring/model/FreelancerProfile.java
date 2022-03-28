package com.spring.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "freelancerProfile")
@Table(name = "freelancerProfile")
public class FreelancerProfile {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "id")
	private int id;

	@Column(name = "title")
	private String title;

	@Column(name = "description")
	private String description;

	@Column(name = "language")
	private String language;

	@Column(name = "proficiencylevel")
	private String proficiencylevel;

	@Column(name = "workTime")
	private String workTime;

	@Column(name = "hourlyRate")
	private Double hourlyRate;

	@Column(name = "serviceFee")
	private Double serviceFee;

	@Column(name = "freelancerReceive")
	private Double freelancerReceive;

	@Column(name = "vedioIntro")
	private String vedioIntro;

	@Column(name = "skill")
	private String skill;

	@Column(name = "profileImg")
	private String profileImg;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getLanguage() {
		return language;
	}

	public void setLanguage(String language) {
		this.language = language;
	}

	public String getProficiencylevel() {
		return proficiencylevel;
	}

	public void setProficiencylevel(String proficiencylevel) {
		this.proficiencylevel = proficiencylevel;
	}

	public String getWorkTime() {
		return workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public Double getHourlyRate() {
		return hourlyRate;
	}

	public void setHourlyRate(Double hourlyRate) {
		this.hourlyRate = hourlyRate;
	}

	public Double getServiceFee() {
		return serviceFee;
	}

	public void setServiceFee(Double serviceFee) {
		this.serviceFee = serviceFee;
	}

	public Double getFreelancerReceive() {
		return freelancerReceive;
	}

	public void setFreelancerReceive(Double freelancerReceive) {
		this.freelancerReceive = freelancerReceive;
	}

	public String getVedioIntro() {
		return vedioIntro;
	}

	public void setVedioIntro(String vedioIntro) {
		this.vedioIntro = vedioIntro;
	}

	public String getSkill() {
		return skill;
	}

	public void setSkill(String skill) {
		this.skill = skill;
	}

	public String getProfileImg() {
		return profileImg;
	}

	public void setProfileImg(String profileImg) {
		this.profileImg = profileImg;
	}

}
