package tap.app.entities;

public class AttendanceCount {

	private int id;
	private int count;
	public AttendanceCount() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AttendanceCount(int id, int count) {
		super();
		this.id = id;
		this.count = count;
	}
	public AttendanceCount(int count) {
		super();
		this.count = count;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	@Override
	public String toString() {
		return "AttendanceCount [id=" + id + ", count=" + count + "]";
	}
	
}
