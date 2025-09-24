//This is another class that I wrote that is hyper specifc to my project
//The purpose of this class is to use the variables from the javascript fetch
//function in a custom query to sort through the three tables in MySQL
//Then, to send that back to the javascript function so it can be printed on 
//the screen.

package com.example.accessingdatamysql;

import org.springframework.web.bind.annotation.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class ArtifactController {

    private final ArtifactRepository artifactRepository;
    static final String DB_URL = "jdbc:mysql://localhost:3306/archive_files";
    static final String USER = "root";
    static final String PASS = "AdvProg2024";
    static final String QUERY = "SELECT *" 
       + " FROM artifact a"
       + " JOIN family_connector f ON f.artifact_id = a.artifact_id"
       + " JOIN person p ON f.person_id = p.person_id"
       + " WHERE p.name = ? AND a.artifact_type = ?";

    //@Autowired
    public ArtifactController(ArtifactRepository artifactRepository) {
        this.artifactRepository = artifactRepository;
    }

    //essentially what this method does is it takes the mapping from the fetch
    //function, parses out the variables, adds it to the query string located
    //above, then it will actually execute the query
    @SuppressWarnings("unchecked")
    @GetMapping("/artifacts/")
    public List<Artifact> getArtifacts(String name, String type) {
        @SuppressWarnings("rawtypes")
        ArrayList artifactList = new ArrayList();
        try {
            Connection conn = DriverManager.getConnection(DB_URL, USER, PASS); 
            PreparedStatement pstm = conn.prepareStatement(QUERY);
            pstm.setString(1, name);
            pstm.setString(2, type);

            ResultSet rs = pstm.executeQuery();
            
            //extract data from result set
            while (rs.next()) {

                //retrieve by the column name
                artifactList.add(artifactRepository.
                findById(rs.getInt("artifact_id")));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } 

        return artifactList;
    }

}
