package tap.app.entities;

public class TableData {
	
	  private String DayDates;
	    private String Monday;
	    private String Tuesday;
	    private String Wednesday;
	    private String Thursday;
	    private String Friday;
	    private String Saturday;
	    private String Sunday;
	    
	    
	    
	    
	    
		public String getDayDates() {
			return DayDates;
		}
		public void setDayDates(String dayDates) {
			DayDates = dayDates;
		}
		public String getMonday() {
			return Monday;
		}
		public void setMonday(String monday) {
			Monday = monday;
		}
		public String getTuesday() {
			return Tuesday;
		}
		public void setTuesday(String tuesday) {
			Tuesday = tuesday;
		}
		public String getWednesday() {
			return Wednesday;
		}
		public void setWednesday(String wednesday) {
			Wednesday = wednesday;
		}
		public String getThursday() {
			return Thursday;
		}
		public void setThursday(String thursday) {
			Thursday = thursday;
		}
		public String getFriday() {
			return Friday;
		}
		public void setFriday(String friday) {
			Friday = friday;
		}
		public String getSaturday() {
			return Saturday;
		}
		public void setSaturday(String saturday) {
			Saturday = saturday;
		}
		public String getSunday() {
			return Sunday;
		}
		public void setSunday(String sunday) {
			Sunday = sunday;
		}
		public TableData() {
			super();
			// TODO Auto-generated constructor stub
		}
		public TableData(String dayDates, String monday, String tuesday, String wednesday, String thursday,
				String friday, String saturday, String sunday) {
			super();
			DayDates = dayDates;
			Monday = monday;
			Tuesday = tuesday;
			Wednesday = wednesday;
			Thursday = thursday;
			Friday = friday;
			Saturday = saturday;
			Sunday = sunday;
		}
		@Override
		public String toString() {
			return "TableData [DayDates=" + DayDates + ", Monday=" + Monday + ", Tuesday=" + Tuesday + ", Wednesday="
					+ Wednesday + ", Thursday=" + Thursday + ", Friday=" + Friday + ", Saturday=" + Saturday
					+ ", Sunday=" + Sunday + "]";
		}
		
		
		
		
		
		
		
		
		
		
		
		private String java;
	    private String sql;
	    private String python;
	    private String frontend;
	    private String c;





		public String getJava() {
			return java;
		}
		public void setJava(String java) {
			this.java = java;
		}
		public String getSql() {
			return sql;
		}
		public void setSql(String sql) {
			this.sql = sql;
		}
		public String getPython() {
			return python;
		}
		public void setPython(String python) {
			this.python = python;
		}
		public String getFrontend() {
			return frontend;
		}
		public void setFrontend(String frontend) {
			this.frontend = frontend;
		}
		public String getC() {
			return c;
		}
		public void setC(String c) {
			this.c = c;
		}
	    
	    
	    
}