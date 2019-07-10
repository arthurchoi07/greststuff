package example.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import example.member.model.MemberVO;

@Controller
@RequestMapping("/re")
public class requestMappingController {
	
		@RequestMapping(value="/c.do", params={"id=hong"}) //params는 찾을 때 더 세세한 조건
		public void test2(String id) {
			System.out.println("c.do요청->"+id);
		}
		
		@RequestMapping(value= {"/a.do","/b.do"})
		public String test() {
			System.out.println("a.do요청과 b.do요청");
			return "hello"; //뷰페이지 - /WEB-INF/view/+이름+.jsp
		}
		//리턴형 void : 요청과 동일한 이름의 뷰페이지로 전달 a.jsp, b.jsp
		//리턴형 String : 문자열과 동일한 뷰페이지로 전달
	
		@RequestMapping(value="/request.do",method=RequestMethod.POST)
		public void request(@ModelAttribute("vo") MemberVO vo) {
			System.out.println("re/request.do 요청");
			System.out.println(vo.getName());
		}
		//**************리턴형이 void이면 요청이름과 동일한 뷰 페이지 지정
}
