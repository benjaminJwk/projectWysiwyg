package wysiwyg.menu.controller;

import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;









import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import wysiwyg.file.vo.FileVO;
import wysiwyg.service.BoardService;
import wysiwyg.service.ShowService;
import wysiwyg.show.vo.ShowVO;
import wysiwyg.url.vo.UrlVO;
import wysiwyg.user.vo.UserVO;

@Controller
public class MakePageController {

	@Resource(name="ShowService")
	private ShowService ShowService;
	
	@Resource(name="boardService")
	private BoardService boardeService;

	@RequestMapping("uploadImg.do")
	public ModelAndView uploadImg(MultipartHttpServletRequest request ,HttpSession session)
	{
		MultipartFile file = request.getFile("file");
		System.out.println("imgimgimg");
		System.out.println("ddddd "+file);
		String fName = file.getOriginalFilename();
		String pageName = session.getAttribute("page").toString();
		System.out.println("pagename = "+pageName);
		String path = session.getServletContext().getRealPath("/savePage/"+session.getAttribute("id")+"/")+File.separator+pageName+File.separator+"saveImg";
		File di = new File(path);
		if(!di.exists())
		{
			di.mkdir();
		}
		System.out.println(path+File.separator+fName);
		try{
			file.transferTo(new File(path + File.separator + fName));
		}catch(Exception e){
			e.getStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("fName", fName);
		mv.setViewName("jsonView");
		return mv;
		
	}
	@RequestMapping("changeBg.do")
	public ModelAndView changeBg(MultipartHttpServletRequest request ,HttpSession session)
	{
		
		MultipartFile file = request.getFile("file");
		System.out.println("imgimgimg");
		System.out.println("ddddd "+file);
		String fName = file.getOriginalFilename();

		String path = session.getServletContext().getRealPath("/saveImg/");
		System.out.println(path+"/"+fName);
		try{
			file.transferTo(new File(path + "/" + fName));
		}catch(Exception e){
			e.getStackTrace();
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("fName", fName);
		mv.setViewName("jsonView");
		return mv;
		
	}
	@RequestMapping("createBoard.do")
	@ResponseBody
	public String createBoard()
	{
		int bId = boardeService.createBoard();		
		return bId+"";
	}
	@RequestMapping("savePage.do")
	@ResponseBody
	public String savePage(String pName, String pageName, String pageContents, HttpSession session)
	{
		//System.out.println(pageContents);
		
		String path = session.getServletContext().getRealPath("/savePage/"+session.getAttribute("id")+"/");
		path += File.separator+pName;
		System.out.println(path+File.separator+pageName);
		File file = new File(path + File.separator + pageName);
		
		try{
			BufferedOutputStream wr = new BufferedOutputStream(new FileOutputStream(file));
			if(!file.exists())
			{
				file.createNewFile();
			}
			
			wr.write("<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'><html>".getBytes());
			wr.write(pageContents.getBytes("UTF-8"));
			wr.write("</html>".getBytes());
			wr.flush();
		}catch(IOException e){
			e.getStackTrace();
		}
		
		return null;		
	}
	
	@RequestMapping("savePage2.do")
	@ResponseBody
	public String savePage2(String pName, String pageName, String pageContents, String pageHeader, HttpSession session)
	{
		//System.out.println(pageContents);
		
		String path = session.getServletContext().getRealPath("/savePage/"+session.getAttribute("id")+"/");
		path += File.separator+pName;
		System.out.println(path+File.separator+pageName);
		File file = new File(path + File.separator + pageName+".html");
		
		try{
			BufferedOutputStream wr = new BufferedOutputStream(new FileOutputStream(file));
			if(!file.exists())
			{
				file.createNewFile();
			}
			
			wr.write("<!doctype html>".getBytes());
			wr.write("<head>".getBytes());
			wr.write(pageHeader.getBytes("UTF-8"));
			wr.write("</head>".getBytes());
			wr.write("<body>".getBytes());
			wr.write("<div id='header'>".getBytes());
			wr.write("<div id='main'>".getBytes());
			wr.write("<ul id='menu'>".getBytes());
			wr.write(pageContents.getBytes("UTF-8"));
			wr.write("</ul>".getBytes());
			wr.write("</ul>".getBytes());
			wr.write("</ul>".getBytes());
			wr.write("</div>".getBytes());
			wr.write("</div>".getBytes());
			wr.write("<div id='content' style='height:500px;'>".getBytes());
			wr.write("</div>".getBytes());
			wr.write("<div id='footer'>".getBytes());
			wr.write("<p>&copy; Copyright 2009 Distinctive &minus; Design: Luka Cvrk, <a href='http://www.solucija.com' title='Free CSS Templates'>Solucija</a></p>".getBytes());
			wr.write("</div>".getBytes());
			wr.write("</body>".getBytes());
			wr.write("</html>".getBytes());
			wr.flush();
		}catch(IOException e){
			e.getStackTrace();
		}
		
		return null;		
	}
	@RequestMapping("makeOk.do")
	@ResponseBody
	public String making(ShowVO vo, HttpSession session){
		
		System.out.println("make 진입!!!!!!!!!!!");
		vo.setUserMail(session.getAttribute("id").toString());
		System.out.println("ID는"+vo.getUserMail());
		
		int result = ShowService.showInsert(vo);
		System.out.println("pageName"+vo.getPageName());
		System.out.println("templteName"+vo.getTemplteName());
		
		
		File sFile,tFile;
		sFile = new File(session.getServletContext().getRealPath("/template/")+File.separator+vo.getTemplteName());
		tFile = new File(session.getServletContext().getRealPath("/savePage/"+session.getAttribute("id")+"/")+File.separator+vo.getPageName());
		tFile.mkdir();
		System.out.println(sFile.getAbsolutePath());
		System.out.println(tFile.getAbsolutePath());
		
		copy(sFile, tFile);
		
		if(result > 0) return "success";
		return "fail";
	}
	
	@RequestMapping("makeUrl.do")
	@ResponseBody
	public String makeUrl(String url, String pageName, HttpSession session)
	{
		UrlVO vo = new UrlVO();
		vo.setUserMail(session.getAttribute("id").toString());
		vo.setUrlName(url);
		vo.setProjectName(pageName);
		System.out.println(vo.getUserMail().length());
		System.out.println(vo.getUrlName().length());
		System.out.println(vo.getProjectName().length());
		
		//String path = session.getServletContext().getRealPath("/savePage/"+session.getAttribute("id")+"/")+File.separator+pageName+File.separator+"index.html";

		//System.out.println(path);
		
		int result = ShowService.makeUrl(vo);
		if(result>0)
			return "success";		
		return "fail";
	}
	
	@RequestMapping("{url}")//jack
	public String aa(@PathVariable String url, HttpSession session){
		System.out.println("url="+url);
		UrlVO vo = ShowService.mappingUrl(url);
		System.out.println("pName : "+vo.getProjectName());
		System.out.println("id : " + vo.getUserMail());
		
		String path = "/savePage/"+vo.getUserMail()+File.separator+vo.getProjectName()+File.separator+"index.html";
		//String path="main.html";
		
		//http://localhost:8000/projectWysiwyg/savePage/mike@naver.com//aaaa/index.html
		//System.out.println(path);
		
		return "redirect:"+path;
		
	}
	
	public static void copy(File sFile, File tFile){
		
		File[] ff = sFile.listFiles();
		for (File file : ff) {
			File temp = new File(tFile.getAbsolutePath() + File.separator + file.getName());
			System.out.println(temp.getAbsolutePath());
			if(file.isDirectory()){
				temp.mkdir();
				copy(file, temp);
			} else {
				FileInputStream fis = null;
				FileOutputStream fos = null;
				try {
					temp.createNewFile();
					fis = new FileInputStream(file);
					fos = new FileOutputStream(temp) ;
					byte[] b = new byte[4096];
					int cnt = 0;
					while((cnt=fis.read(b)) != -1){
						fos.write(b, 0, cnt);
					}
				} catch (Exception e) {
					e.printStackTrace();
				} finally{
					try {
						fis.close();
						fos.close();
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
				}
			}
		}
		
	}
}
