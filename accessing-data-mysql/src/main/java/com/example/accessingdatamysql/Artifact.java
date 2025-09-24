//This is one of the classes that I wrote that is hyper specific to my project
//All this class does is simply create a table in mySQL  of each artifact.
//It includes the column names, and setter/getter methods for each

package com.example.accessingdatamysql;

import javax.persistence.Entity;
import javax.persistence.Id;
@Entity
public class Artifact {

    @Id
    private int artifact_id;

    private String artifact_type;

    private String artifact;
    private String description;
    private String date;

    public void setId(int artifact_id) {
        this.artifact_id = artifact_id;
    }

    public void setType(String artifact_type) {
        this.artifact_type = artifact_type;
    }

    public void setArtifact(String artifact) {
        this.artifact = artifact;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public int getId() {
        return artifact_id;
    }

    public String getType() {
        return artifact_type;
    }

    public String getArtifact() {
        return artifact;
    }

    public String getDescription() {
        return description;
    }

    public String getDate() {
        return date;
    }
}
