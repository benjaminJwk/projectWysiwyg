package wysiwyg.service;

import java.util.List;

import javax.annotation.Resource;




import wysiwyg.dao.ShowDAO;
import wysiwyg.show.vo.ShowVO;
import wysiwyg.url.vo.UrlVO;

public class ShowServiceImpl implements ShowService {

	@Resource(name="ShowDAO")
	private ShowDAO ShowDAO;
	
	@Override
	public List<ShowVO> showSelect(String userMail) {
		return ShowDAO.showSelect(userMail);
	}
	
	public int showInsert(ShowVO vo) {
		// TODO Auto-generated method stub
		return ShowDAO.showInsert(vo);
	}

	@Override
	public int showDelete(ShowVO vo) {
		// TODO Auto-generated method stub
		return ShowDAO.showDelete(vo);
	}

	@Override
	public int makeUrl(UrlVO vo) {
		// TODO Auto-generated method stub
		return ShowDAO.makeUrl(vo);
	}

	@Override
	public UrlVO mappingUrl(String url) {
		// TODO Auto-generated method stub
		return ShowDAO.mappingUrl(url);
	}
	

}
