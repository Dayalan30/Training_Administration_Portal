package tap.app.controller;

import tap.app.entities.TableData;
import tap.app.repository.TableDataDao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/coursetable")
public class TableController {

    @Autowired
    private TableDataDao tableDataDAO;

//    @GetMapping("/displayTable")
//    public String displayTable(Model model) {
//        List<TableData> tableDataList = tableDataDAO.getAllTableData();
//        model.addAttribute("tableDataList", tableDataList);
//        return "course_table";
//    }
}
