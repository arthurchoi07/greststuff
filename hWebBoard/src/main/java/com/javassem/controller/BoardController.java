package com.javassem.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.javassem.domain.BoardVO;
import com.javassem.service.BoardService;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;
	
	@RequestMapping("/getBoardList.do")
	/*  public void getBoardList(BoardVO vo,
	 * Model model) { List<BoardVO> list =boardService.getBoardList(vo); //1 Model
	 * //2 ModelAndView //3 함수위에 @ModelAttribute
	 * model.addAttribute("boardList",list);
	 * 
	 * }
	 */
	public ModelAndView getBoardList(BoardVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("boardList",boardService.getBoardList(vo));
		mv.setViewName("getBoardList");
		return mv;
	}
	@RequestMapping("/insertBoard.do")
	public void insertBoard() {
		//리턴형이 void이면 요청이름 (insertBoard)과 동일한 뷰이름이 지정
		//WEB-INF/view/ + insertBoard + .jsp
	}
	@RequestMapping("/saveBoard.do") //아래에 인자를 쓰면 전 화면의 값을 가져온다. 
	public String savdBoard(BoardVO vo) {
		boardService.insertBoard(vo);
		return "redirect:getBoardList.do";
	}
	@RequestMapping("/updateBoard.do")
	public String updateBoard(BoardVO vo) {
		boardService.updateBoard(vo);
		return "redirect:getBoardList.do";
		
	}
	
	
	@RequestMapping(value="/getBoard.do")
	public ModelAndView getBoard(BoardVO vo) {
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("board",boardService.getBoard(vo));
		mv.setViewName("getBoard");
		return mv;
		
		//Model 사용 시 리턴 필요 없음
		//ModelAndView 리턴
	}
	
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(BoardVO vo) {
		boardService.deleteBoard(vo);
		return "redirect:getBoardList.do";
	}

}
