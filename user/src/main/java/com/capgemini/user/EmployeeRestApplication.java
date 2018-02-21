package com.capgemini.user;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@EnableDiscoveryClient
@SpringBootApplication
public class EmployeeRestApplication {

	public static void main(String[] args) {
		SpringApplication.run(EmployeeRestApplication.class, args);
	}
	
	
}
