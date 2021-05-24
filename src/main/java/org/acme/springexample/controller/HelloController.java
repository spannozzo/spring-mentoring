package org.acme.springexample.controller;

import org.acme.springexample.service.HelloServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

	@Autowired
	HelloServiceInterface helloService;
	
	@RequestMapping("/")
	public String getHello() {
		
		return helloService.getHello();
		
	}
	
	@RequestMapping(value = "/", method = RequestMethod.POST)
	public void saveMessage(@RequestBody String message) {
		helloService.saveMessage(message);
		
	}
	
}
