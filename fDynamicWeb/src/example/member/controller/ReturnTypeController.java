package example.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/re")
public class ReturnTypeController {
	@RequestMapping(value="/map.do")
	public Map map() {
		Map<String, String> m = new HashMap<String, String>();
		m.put("age", "22");
		m.put("hobby", "gen");
		return m;
		//리턴형이 Map인 경우 - 뷰페이지 자동지정		
	}
	@RequestMapping(value="/model.do")
	public void model(Model m) {
		//Model 인자에 지정 - 값을 넘겨 받는 것이 아니다(****)
		//뷰쪽으로 전달하는 객체
		m.addAttribute("message","뭐");
		m.addAttribute("addr","이동네");
	}
}
