package egovframework.example.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class mainController {
	
	@RequestMapping(value = "/main.do")
	public String mainInit() {		
		return "main-tiles";
	}

}
