package example.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import example.member.model.MemberVO;

@Controller
@RequestMapping("/re")
public class ParameterController {
	
	@RequestMapping(value="/param.do") 
	public void test(String id, String age) {
		System.out.println("param.do"+id+age);
	}
	@RequestMapping(value="/paramForm.do") 
	public void test2(MemberVO vo, HttpSession session) {
		System.out.println("paramForm.do "+vo.getId()+" "+vo.getName());
		String dbId="001";
		String dbName="홍길동";
		
		//입력값과 DB 값이 모두 동일하면 세션에 저장
		if(vo.getId().equals(dbId) && vo.getName().equals(dbName)) {
			session.setAttribute("login",dbId+"로그인");
		}
	
	}
	
}
