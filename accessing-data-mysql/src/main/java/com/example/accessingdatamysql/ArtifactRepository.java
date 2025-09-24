//Like the accessingDataMysqlApplication file, the structure of this was given
//from SpringBoot. This file simply extends the JPARepository and connects it 
//to the Artifact Repository

package com.example.accessingdatamysql;

import org.springframework.data.jpa.repository.JpaRepository;
public interface ArtifactRepository extends JpaRepository<Artifact, Integer> {   
}