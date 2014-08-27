package wysiwyg.service;


import java.util.List;

import wysiwyg.show.vo.ShowVO;
import wysiwyg.url.vo.UrlVO;

public interface ShowService {

	public List<ShowVO> showSelect(String userMail);
	public int showInsert(ShowVO vo);
	public int showDelete(ShowVO vo);
	public int makeUrl(UrlVO vo);
	public UrlVO mappingUrl(String url);
}
