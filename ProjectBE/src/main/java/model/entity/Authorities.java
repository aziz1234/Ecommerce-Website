package model.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "AUTHORITIES")
public class Authorities {
  @Id
  @Column(name = "AUTHORITY")
  private String authority;

  @ManyToOne
  @JoinColumn(name = "USERNAME")
  private Userinfo user;
  
public Authorities() {}  

public Authorities(String authority, Userinfo user) {
	super();
	this.authority = authority;
	this.user = user;
}

public String getAuthority() {
	return authority;
}

public void setAuthority(String authority) {
	this.authority = authority;
}

public Userinfo getUser() {
	return user;
}

public void setUser(Userinfo user) {
	this.user = user;
}
	

}
