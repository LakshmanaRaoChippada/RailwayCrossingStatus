package Beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name="UserSignup")
public class UserSignup {
	
	@Column(length=25)
	private String f_last,l_last,email,pass1,pass2;

	public String getF_last() {
		return f_last;
	}

	public void setF_last(String f_last) {
		this.f_last = f_last;
	}

	public String getL_last() {
		return l_last;
	}

	public void setL_last(String l_last) {
		this.l_last = l_last;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass1() {
		return pass1;
	}

	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}

	public String getPass2() {
		return pass2;
	}

	public void setPass2(String pass2) {
		this.pass2 = pass2;
	}
	
}
