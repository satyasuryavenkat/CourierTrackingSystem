package courier.tracking.system;
import java.io.Serializable;

public class Admin implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String adminname;
    private String adminmail;
    private String adminaddr;
    private String adminmobile;
    private String adminpasswd;
	public String getAdminname() {
		return adminname;
	}
	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}
	public String getAdminmail() {
		return adminmail;
	}
	public void setAdminmail(String adminmail) {
		this.adminmail = adminmail;
	}
	public String getAdminaddr() {
		return adminaddr;
	}
	public void setAdminaddr(String adminaddr) {
		this.adminaddr = adminaddr;
	}
	public String getAdminmobile() {
		return adminmobile;
	}
	public void setAdminmobile(String adminmobile) {
		this.adminmobile = adminmobile;
	}
	public String getAdminpasswd() {
		return adminpasswd;
	}
	public void setAdminpasswd(String adminpasswd) {
		this.adminpasswd = adminpasswd;
	}
	
   
}