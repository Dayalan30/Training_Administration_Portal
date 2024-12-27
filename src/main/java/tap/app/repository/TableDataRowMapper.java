package tap.app.repository;


import org.springframework.jdbc.core.RowMapper;

import tap.app.entities.TableData;

import java.sql.ResultSet;
import java.sql.SQLException;

public class TableDataRowMapper implements RowMapper<TableData> {

    @Override
    public TableData mapRow(ResultSet rs, int rowNum) throws SQLException {
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
    }
}
