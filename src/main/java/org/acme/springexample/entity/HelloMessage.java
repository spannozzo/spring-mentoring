package org.acme.springexample.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Lob;


@Entity
public class HelloMessage {

	@Id
	@GeneratedValue
	Integer id;
	
	@Lob 
	@Column(name="table_field_for_message", length=512)
	String message;

	public HelloMessage() {
		
	}
	
	public HelloMessage(String message) {
		this.message=message;
	}

	public Integer getId() {
		return id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}
	
	
}
