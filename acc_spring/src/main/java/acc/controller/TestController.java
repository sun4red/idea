package acc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	
	@RequestMapping("tomain")	
	public String toMain() {
		
		
		return "boardForm";
	}
	
}
