package egovframework.example.haksasengStatus;

import java.sql.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.cmmn.JsonUtil;
import egovframework.example.haksasengStatus.service.CheckTableVO;
import egovframework.example.haksasengStatus.service.HaksaengStatusService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class HaksaengStatusController {

	@Resource 
	HaksaengStatusService haksaengStatusService; 
	
	@RequestMapping(value="/haksaengStatus.do")
	public String initHaksaengStatus(Model model) throws Exception{
		
		List<EgovMap> haksaengList = haksaengStatusService.selectHaksaengStatusServiceList();
		List<EgovMap> haksaengChartList = haksaengStatusService.selectHaksaengStatusChartServiceList();
		model.addAttribute("haksaengList", haksaengList);
		model.addAttribute("haksaengChartList", haksaengChartList);
		return "haksaengStatus/haksaengStatus.tiles";
	}
	
	@RequestMapping(value="/initOneMapping.do")
	public String initOneMapping(Model model, HttpServletRequest req, @RequestParam(required=false) HashMap<String,String> str) throws Exception {
		
		String tableName = str.get("tableName");
		
		String returnStr = "";
		
		if(req.getParameter("listr").equals("haksaengStatusChart")) {
			
			List<EgovMap> haksaengChartList = haksaengStatusService.selectHaksaengStatusChartServiceList();
			
			model.addAttribute("haksaengChartList", haksaengChartList);
			
			returnStr = "haksaengStatus/haksaengStatusChart.tiles";
			
		} else if(req.getParameter("listr").equals("haksaengStatusTable")) { 
			
			List<EgovMap> haksaengList = haksaengStatusService.selectHaksaengStatusTableServiceList();
			if(str != null) {
				List<EgovMap> haksaengSelectNameList = haksaengStatusService.selectHaksaengStatusTableNameServiceList(tableName);
			
				model.addAttribute("haksaengList", haksaengSelectNameList);
			} else {
				
				model.addAttribute("haksaengList", haksaengList);
			}
			
			returnStr = "haksaengStatus/haksaengStatusTable.tiles";
		}
		
		return returnStr;
	}
	@RequestMapping(value="/selectHaksaengStatusList.do", produces="application/json;charset=utf-8")
	@ResponseBody
	public String selectHaksaengStatusList(@RequestParam String param) throws Exception {
		
		EgovMap paramMap = new EgovMap();
		paramMap.put("classNm", param);
	
		List<EgovMap> haksaengList = haksaengStatusService.selectHaksaengStatusServiceList(paramMap);
		
		return JsonUtil.ListToJson(haksaengList);
	}
}


