package wysiwyg.menu.controller;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import wysiwyg.service.ShowService;
import wysiwyg.show.vo.ShowVO;

@Controller
public class ShowController {
	@Resource(name="ShowService")
	private ShowService ShowService;
	
	@RequestMapping("showSelect.do")
	public ModelAndView showSelete(HttpSession session)
	{
		String mail = session.getAttribute("id").toString();
		System.out.println("mail = " + mail);
		List<ShowVO> list = ShowService.showSelect(mail);
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("jsonView");
		return mv;
	}
	
	@RequestMapping("showDelete.do")
	public String showDelete(HttpSession session, int pId, String pName)
	{
		ShowVO vo = new ShowVO();
		vo.setPageId(pId);
		vo.setPageName(pName);
		vo.setUserMail(session.getAttribute("id").toString());
		
		File file = new File(session.getServletContext().getRealPath("/savePage/"+session.getAttribute("id")+"/")+File.separator+vo.getPageName());
		System.out.println(file.getAbsolutePath()+File.separator+file.getName());
		int result = ShowService.showDelete(vo);
		delete(file);		
		System.out.println("????????????");
		if(result >0)
			return "success";
		return "fail";
	}
	
	public static void delete(File sFile){
		
		File[] ff = sFile.listFiles();
		for (File file : ff) {
			if(file.isDirectory()){
				delete(file);
			} else {
				file.delete();
			}
		}
		sFile.delete();
		
	}
}
