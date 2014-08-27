package wysiwyg.menu.controller;

import java.io.File;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import wysiwyg.service.UserService;
import wysiwyg.user.vo.UserVO;

@Controller
public class UserController {
	
	@Resource(name="userService")
	private UserService userService;

	@RequestMapping("userInsert.do")
	@ResponseBody
	public String insert(UserVO vo, HttpSession session){
		
		System.out.println("user 진입!!!!!!!!!!!");
		System.out.println(vo.getUserName());
		System.out.println(vo.getUserMail());
		System.out.println(vo.getUserPassword());
		int result = userService.userInsert(vo);
		System.out.println(result);
		String s = session.getServletContext().getRealPath("/savePage/")+File.separator+vo.getUserMail();

		File di = new File(s);
		di.mkdir();
		
		return result+"";
		
	}
	
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session)
	{
		session.invalidate();
		ModelAndView mv = new ModelAndView();
		mv.setViewName("indexPage");
		return mv;				
	}
	
	@RequestMapping("loginOk.do")
	@ResponseBody
	public String login(UserVO vo, HttpSession session){
		
		String ok = "fail";
		System.out.println("login 진입!!!!!!!!!!!");
		System.out.println(vo.getUserMail());
		System.out.println(vo.getUserPassword());
		int result = userService.loginOk(vo);
		if(result == 1)
		{
			ok = "ok";
			session.setAttribute("id",vo.getUserMail());
		}
		return ok;		
	}
	
	@RequestMapping("myPageOk.do")
	public ModelAndView myPage(HttpSession session){
		
		String ok = null;
		ModelAndView mv = new ModelAndView();
		mv.setViewName("jsonView");
		System.out.println("mypage 진입!!!!!!!!!!!");
		if(session.getAttribute("id")==null)
			return mv;
			
		UserVO vo = userService.selectMyPage(session.getAttribute("id").toString());
		System.out.println(vo.getUserMail());
		System.out.println(vo.getUserName());
		System.out.println(vo.getUserPassword());
		mv.addObject("vo",vo);
		return mv;
	}
	
	@RequestMapping("changePassword.do")
	@ResponseBody
	public String changePassword(HttpSession session, String password)
	{
		System.out.println("change!!!!");
		UserVO vo = new UserVO();
		vo.setUserMail(session.getAttribute("id").toString());
		vo.setUserPassword(password);
		if(userService.changePassword(vo) > 0)
		{
			System.out.println("success");
			return "success";
		}
		System.out.println("fail");
		return "fail";
	}
}
