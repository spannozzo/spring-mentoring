package org.acme.springexample.service;

import org.acme.springexample.entity.HelloMessage;
import org.acme.springexample.repository.HelloRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HelloService implements HelloServiceInterface{

	@Autowired
	HelloRepository helloRepository;
	
	public String getHello() {
		
		
	return 	helloRepository.findById(1)
				.orElseGet(() ->new HelloMessage(helloRepository.getHelloData()))
				.getMessage();
		
	}

	@Override
	public void saveMessage(String message) {
				
		helloRepository.save(new HelloMessage(message));
			
	}

}
