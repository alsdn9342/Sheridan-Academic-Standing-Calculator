/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.io.Serializable;

/**
 *
 * @author Minwoo Park
 */
public class Grade implements Serializable {

    private String gradePoint;
    private String letterDescription;

    public Grade() {
    }

    public String getGradePoint() {
        return gradePoint;
    }

    public void setGradePoint(String gradePoint) {
        this.gradePoint = gradePoint;
    }

    public String getLetterDescription() {
        return letterDescription;
    }

    public void setLetterDescription(String letterDescription) {
        this.letterDescription = letterDescription;
    }
    
    
}
