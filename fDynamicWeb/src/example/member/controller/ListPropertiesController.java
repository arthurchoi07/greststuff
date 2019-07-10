package example.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import example.member.model.MemberVO;
import example.member.model.MemberVOList;

@Controller
public class ListPropertiesController {
	@RequestMapping(value="/multiInsert.do")
	public void test(MemberVOList memberList) {
		System.out.println("multiInsert.do");
		
		for(MemberVO vo : memberList.getList()) {
			System.out.printf("state=%s, id=%s, name=%10s, age=%d",vo.isState(), vo.getId(),vo.getName(),vo.getAge());
		}
	}
}
