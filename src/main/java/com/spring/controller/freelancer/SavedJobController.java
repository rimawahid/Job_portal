package com.spring.controller.freelancer;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.spring.model.JobPost;
import com.spring.model.SavedJobs;
import com.spring.service.JobPostService;
import com.spring.service.SavedJobsService;

@RestController
@RequestMapping(value = "freelancer")
public class SavedJobController {
	@Autowired
	SavedJobsService savedJobsService;
	
	@Autowired
	JobPostService jobPostService;
	
	
//	@RequestMapping(value = "/savedjobs/{id}", method = RequestMethod.GET)
//    public ModelAndView edit(@PathVariable String id){
//        int pid = Integer.valueOf(id);
//        JobPost flight = jobPostService.getById(pid);
//
//        return new ModelAndView("freelancer/findWork/savedJob", "flight", flight);
//    }
	
	@RequestMapping(value = "/savedjob", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest r, @ModelAttribute SavedJobs savedJobs){
		SavedJobs b = savedJobsService.save(savedJobs, r);
		System.out.println(b);
	System.out.println(savedJobs.getCategory() +"...........");
		//Map<String, Object> book = new HashMap<String, Object>();
       // List<SavedJobs> bList = invoiceService.getByEmail(b.getTemail());

       // book.put("bList", bList);
		return new ModelAndView("freelancer/findWork/savedJob", "b", b);
    }
}
