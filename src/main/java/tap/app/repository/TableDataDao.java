package tap.app.repository;
import java.util.List;
import java.util.Map;

import tap.app.entities.TableData;

public interface TableDataDao {
	
	 List<TableData> getAllTableData(String trainerCourse);

		/* List<TableData> getAllTableData(); */
	 Map<String, List<TableData>> getAllTableData();

}
