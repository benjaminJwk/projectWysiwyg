package wysiwyg.menu.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import wysiwyg.board.vo.BoardVO;
import wysiwyg.service.BoardService;

@Controller
public class BoardController {
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping("boardSelect.do")
	public ModelAndView notice(String bId)
	{
		System.out.println("!!!!!!!!" + bId);
		List<BoardVO> list = boardService.boardSelect(Integer.parseInt(bId));
		System.out.println(list);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping("boardWrite.do")
	@ResponseBody
	public String boardWrite(BoardVO vo, HttpSession session)
	{
		System.out.println("write!!!!!!!");
		System.out.println(vo.getBoardSubject());
		System.out.println(vo.getBoardContents());
		System.out.println("boardID = " + vo.getBoardId());
		vo.setBoardWriter(session.getAttribute("id").toString());
		int result = boardService.boardWrite(vo);
		if(result > 0) return "success";
		return "fail";
	}
	
	@RequestMapping("userWrite.do")
	@ResponseBody
	public String userWrite(String writer, String contents, int bId)
	{
		BoardVO vo = new BoardVO();
		vo.setBoardContents(contents);
		vo.setBoardId(bId);
		vo.setBoardWriter(writer);
		vo.setBoardSubject("user");
		
		System.out.println("write!!!!!!!");
		System.out.println(vo.getBoardWriter());
		System.out.println(vo.getBoardContents());
		System.out.println("boardID = " + vo.getBoardId());
		int result = boardService.boardWrite(vo);
		if(result > 0) return "success";
		return "fail";
	}
	
	@RequestMapping("boardDelete.do")
	@ResponseBody
	public String boardDelete(int bId, int bNo, HttpSession session)
	{
		BoardVO vo = new BoardVO();
		System.out.println("bId="+bId);
		System.out.println("bNo="+bNo);
		vo.setBoardId(bId);
		vo.setBoardNo(bNo);
		vo.setBoardWriter(session.getAttribute("id").toString());
		int result = boardService.boardDelete(vo);
		if(result>0) return "success";
		return "fail";
	}
	@RequestMapping("comment.do")
	@ResponseBody
	public String boardComment(String commentContents, int bId, int bNo, HttpSession session)
	{
		System.out.println("commentcontents : " + commentContents);
		System.out.println("bId : " + bId);
		System.out.println("bNo : " + bNo);
		System.out.println("id : " + session.getAttribute("id"));
		int result = boardService.boardComment(commentContents, session.getAttribute("id").toString(), bId, bNo);
		if(result>0)
		{
			System.out.println("success");
			return "success";
		}
		return "fail";
		
	}
	
	@RequestMapping("boardSelectNotice.do")
	public ModelAndView selectNotice(String bId)
	{
		System.out.println("공지사항");
		System.out.println(bId);
		List<BoardVO> list = boardService.boardSelectNotice(Integer.parseInt(bId));
		System.out.println(list);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping("boardSelectQna.do")
	public ModelAndView selectQna(String bId)
	{
		System.out.println("qna");
		List<BoardVO> list = boardService.boardSelectQna(Integer.parseInt(bId));
		System.out.println(list);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("jsonView");
		return mv;
	}
}
