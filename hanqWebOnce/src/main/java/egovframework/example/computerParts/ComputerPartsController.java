package egovframework.example.computerParts;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.cmmn.JsonUtil;
import egovframework.example.haksasengStatus.service.HaksaengStatusService;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class ComputerPartsController {

	@Resource 
	HaksaengStatusService haksaengStatusService;
	
	@RequestMapping(value="/multiSelectBox.do")
	public String initMultiSelectBox(Model model) throws Exception{
		
		List<EgovMap> partsList = haksaengStatusService.selectComputerPartsServiceList();
		
		List<EgovMap> partsOptList = haksaengStatusService.selectComputerPartsOptServiceList();
		
		model.addAttribute("partsList", partsList);
		
		model.addAttribute("partsOptList", partsOptList);
		return "haksaengStatus/multiSelectBox.tiles";
	}
	@RequestMapping(value = "/secondOptAjax.do", produces="application/json; charset=utf-8")
	@ResponseBody
	public String secondOptAjax(@RequestParam(required = false) String parts) throws Exception {
		
		List<EgovMap> partsOptCdList = haksaengStatusService.selectComputerPartsOptCdServiceList(parts);
		
		return JsonUtil.ListToJson(partsOptCdList);
	}
}
