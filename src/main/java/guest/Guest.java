package guest;

import java.io.Serializable;
import java.sql.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Guest implements Serializable {
	private static final long serialVersionUID = 1L;
	
	@Id @GeneratedValue
	Long id;
	private String name;
	private Date signingDate;
	
	public Guest() {}
	public Guest(String name) {
		this.name = name;
		this.signingDate = new Date(System.currentTimeMillis());
	}
	
	public Long getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public Date getSigningDate() {
		return signingDate;
	}
	@Override
	public String toString() {
		return name + " (signed on " + signingDate + ")";
	}
}
