package spring.mvc.sample;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloController {
	
	@RequestMapping("/start.do")
	public ModelAndView start() {
		System.out.println("start.do 요청 받음");
		
		ModelAndView m = new ModelAndView();
		m.addObject("message", "점심을");
		m.addObject("name", "짝꿍님");
		m.setViewName("hello");
		return m;
	}
}
