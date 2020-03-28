package courier.tracking.system;
import java.io.Serializable;

public class Warehouse implements Serializable {
    /**
     * 
     */
    private static final long serialVersionUID = 1L;
    private String branchname;
    private String branchaddr;
    private String branchmobile;
	public String getBranchname() {
		return branchname;
	}
	public void setBranchname(String branchname) {
		this.branchname = branchname;
	}
	public String getBranchaddr() {
		return branchaddr;
	}
	public void setBranchaddr(String branchaddr) {
		this.branchaddr = branchaddr;
	}
	public String getBranchmobile() {
		return branchmobile;
	}
	public void setBranchmobile(String branchmobile) {
		this.branchmobile = branchmobile;
	}
 
	
   
}