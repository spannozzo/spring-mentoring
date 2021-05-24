package org.acme.springexample.repository;

import java.util.Arrays;
import java.util.List;

import org.acme.springexample.entity.HelloMessage;
import org.springframework.data.jpa.repository.JpaRepository;

public interface HelloRepository extends JpaRepository<HelloMessage, Integer>{
	
	
	
	public default String getHelloData() {
		return "Hello, this is my first SpringBoot project";
	}
	
}
