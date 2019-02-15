package practice.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="CANDIDATES")
public class RegistrationModel implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 5207565108038550653L;
	
	private String name;
	private String state;
	private String university;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getUniversity() {
		return university;
	}
	public void setUniversity(String university) {
		this.university = university;
	}
}
