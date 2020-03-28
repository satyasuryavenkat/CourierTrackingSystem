package courier.tracking.system;
import java.io.Serializable;

public class Staff implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String staffname;
    private String staffmail;
    private String staffaddr;
    private String staffmobile;
    private String staffpasswd;
	public String getStaffname() {
		return staffname;
	}
	public void setStaffname(String staffname) {
		this.staffname = staffname;
	}
	public String getStaffmail() {
		return staffmail;
	}
	public void setStaffmail(String staffmail) {
		this.staffmail = staffmail;
	}
	public String getStaffaddr() {
		return staffaddr;
	}
	public void setStaffaddr(String staffaddr) {
		this.staffaddr = staffaddr;
	}
	public String getStaffmobile() {
		return staffmobile;
	}
	public void setStaffmobile(String staffmobile) {
		this.staffmobile = staffmobile;
	}
	public String getStaffpasswd() {
		return staffpasswd;
	}
	public void setStaffpasswd(String staffpasswd) {
		this.staffpasswd = staffpasswd;
	}
	
	
   
}