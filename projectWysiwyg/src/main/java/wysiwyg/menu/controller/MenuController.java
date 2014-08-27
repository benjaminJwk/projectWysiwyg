package wysiwyg.menu.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class MenuController {
	
	@RequestMapping("index")
	public ModelAndView index()
	{
		ModelAndView mv = new ModelAndView();
		mv.setViewName("indexPage");
		
		return mv;		
	}	
	@RequestMapping(value="{url}.do")
	public void url(){}

}
