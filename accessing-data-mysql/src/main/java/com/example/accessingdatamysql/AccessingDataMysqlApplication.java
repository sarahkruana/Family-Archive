//The files in this folder–besides Artifact, ArtifactController, and
//application.properties– were given as part of the structure of SpringBoot.
//SpringBoot provided an architecture of an api that I was able modify to be
//specific to my project. 

//this is the file that 'starts' the actual api application

package com.example.accessingdatamysql;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class AccessingDataMysqlApplication {

	public static void main(String[] args) {
		SpringApplication.run(AccessingDataMysqlApplication.class, args);
	}

}
