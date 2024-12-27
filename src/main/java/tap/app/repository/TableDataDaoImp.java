package tap.app.repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import tap.app.entities.Course;
import tap.app.entities.TableData;

public class TableDataDaoImp implements TableDataDao {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	public JdbcTemplate getJdbcTemplate() {
		return jdbcTemplate;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	
	
	@Override
	public List<TableData> getAllTableData(String trainerCourse) {
		List<TableData> courseTableList = new ArrayList<TableData>();
		String tablename="java";
		String GET_COURSESDATA = "SELECT * FROM "+trainerCourse;

		courseTableList = jdbcTemplate.query(GET_COURSESDATA, new TableDataRowMapper());
		return courseTableList;
	}
	/*		@Override
public List<TableData> getAllTableData() {
		List<TableData> courseTableList = new ArrayList<TableData>();
		String tablename="java";
		String GET_COURSESDATA = "SELECT * FROM "+tablename;

		courseTableList = jdbcTemplate.query(GET_COURSESDATA, new TableDataRowMapper());
		return courseTableList;
	}*/
	
	
	 @Override
	    public Map<String, List<TableData>> getAllTableData() {
	        Map<String, List<TableData>> tablesData = new HashMap<>();

	        // Replace "your_table_name_x" with the actual table names (java, sql, python, frontend, c)
	        String[] tableNames = {"java", "msql", "python", "frontend","c","cpp"};

	        for (String tableName : tableNames) {
	            String sql = "SELECT * FROM " + tableName;
	            List<TableData> tableDataList = jdbcTemplate.query(sql, (rs, rowNum) -> {
	                TableData tableData = new TableData();
	                tableData.setDayDates(rs.getString("DayDates"));
	                tableData.setMonday(rs.getString("Monday"));
	                tableData.setTuesday(rs.getString("Tuesday"));
	                tableData.setWednesday(rs.getString("Wednesday"));
	                tableData.setThursday(rs.getString("Thursday"));
	                tableData.setFriday(rs.getString("Friday"));
	                tableData.setSaturday(rs.getString("Saturday"));
	                tableData.setSunday(rs.getString("Sunday"));
	                return tableData;
	            });
	            System.out.println("Table Name: " + tableName);
	            System.out.println("Table Data: " + tableDataList);
	            tablesData.put(tableName, tableDataList);
	        }

	        return tablesData;
	    }
	
	

}
