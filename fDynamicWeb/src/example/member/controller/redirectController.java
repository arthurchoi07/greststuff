package example.member.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class redirectController {

	@RequestMapping("/select.do")
	public ModelAndView select() {
		System.out.println("select.do");
		ModelAndView m = new ModelAndView();
		m.addObject("info","목록보는 페이지입니다");
		m.setViewName("redirectResult");
		return m;
		
	}
	@RequestMapping("/insert.do")
	public String insert() {
		System.out.println("insert.do");
		return "redirect:select.do";
	}
		
}
