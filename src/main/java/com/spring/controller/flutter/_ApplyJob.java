package com.spring.controller.flutter;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spring.model.ApplyJobFlutter;
import com.spring.service.ApplyJobService;



@RestController
@RequestMapping(value = "_apply")
public class _ApplyJob {
	 @Autowired
	 ApplyJobService applyJobService;
	    
	   
	    
//	    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
//	    public Product edit(@PathVariable String id){
//	        int pid = Integer.valueOf(id);
//	        Product p = productService.getProductById(pid);
//	        return p;
//	    }
	    
//	    @RequestMapping(value = "/update", method = RequestMethod.POST)
//	    public ResponseEntity<Product> update(@RequestBody Product product){
//	        Product p = productDAO.update(product);
//	        return ResponseEntity.ok(p);
//	    }
//	    
//	    @RequestMapping(value = "/delete/{id}", method = RequestMethod.DELETE)
//	    public ResponseEntity<Product> delete(@PathVariable String id){
//	    	int pid = Integer.valueOf(id);
//	        Product p = productService.delete(pid);
//	        return ResponseEntity.ok(p);
//	    }

	    
	    @RequestMapping(value = "/save", method = RequestMethod.POST)
	    public ResponseEntity<ApplyJobFlutter> save(@RequestBody ApplyJobFlutter product){
	    	ApplyJobFlutter p = applyJobService.save(product);
	        return ResponseEntity.ok(p);
	    }
	    
//	    @RequestMapping(value = "/view", method = RequestMethod.GET)
//	    public List<Product> view(){
//	        List<Product> products = productService.getAll();
//	        return products;
//	    }
	    
}
