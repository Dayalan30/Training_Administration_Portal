package tap.app.entities;

public class AssignDetails {

	private Assign assign;
	private Course course;
	public AssignDetails(Assign assign, Course course) {
		super();
		this.assign = assign;
		this.course = course;
	}
	public AssignDetails() {
		super();
		
	}
	public Assign getAssign() {
		return assign;
	}
	public void setAssign(Assign assign) {
		this.assign = assign;
	}
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	@Override
	public String toString() {
		return "AssignDetails [assign=" + assign + ", course=" + course + "]";
	}
	
}
