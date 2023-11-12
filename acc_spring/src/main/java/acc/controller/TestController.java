package acc.controller;

import org.apache.ibatis.io.ResolverUtil.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	private static final Logger logger = LoggerFactory.getLogger(Test.class);
	
	@RequestMapping("/")	
	public String toMain() {
		
	logger.info("testing");
		
		return "board/boardForm";
	}
	
}
