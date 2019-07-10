package example.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import example.member.model.MemberVO;

@Controller
public class ModelAttrController {
	
	@ModelAttribute("message")
	public String attr1() {
	return "행복"	;
	}
	@ModelAttribute("memberVO") //model로 지정도 가능
	public MemberVO attr2() {
		MemberVO vo = new MemberVO();
		vo.setId("003");
		vo.setName("홍길숙");
		vo.setAge(24);
		return vo;
	}
	
	@RequestMapping(value="/modelAttr.do")
	public void test() {
		//기본적인 방법 - 뷰로 데이타를 전달하는 방법
		//1.MAP
		//2.ModelAndView
		//3.Model
		
	}
}
