package acc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping("mainTest.acc")
	public String mainTest() {
		
		
		return "mainTest";
	}
	
}
