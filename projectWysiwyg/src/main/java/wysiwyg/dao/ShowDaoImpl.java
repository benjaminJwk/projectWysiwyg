package wysiwyg.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import wysiwyg.board.vo.BoardVO;
import wysiwyg.show.vo.ShowVO;
import wysiwyg.url.vo.UrlVO;

public class ShowDaoImpl extends SqlSessionDaoSupport implements ShowDAO {

	@Override
	public List<ShowVO> showSelect(String userMail) {
		System.out.println(userMail);
		List<ShowVO> li = super.getSqlSession().selectList("show.showSelect",userMail);
		
		for(int i=0; i<li.size(); i++)
		{
			System.out.println(li.get(i));
		}
		return li;
	}
	public int showInsert(ShowVO vo) {
		return super.getSqlSession().insert("show.showInsert",vo);
	}
	@Override
	public int showDelete(ShowVO vo) {
		// TODO Auto-generated method stub
		return super.getSqlSession().delete("show.showDelete",vo);
	}
	@Override
	public int makeUrl(UrlVO vo) {
		// TODO Auto-generated method stub
		return super.getSqlSession().insert("show.makeUrl", vo);
	}
	@Override
	public UrlVO mappingUrl(String url) {
		// TODO Auto-generated method stub
		return super.getSqlSession().selectOne("show.mappingUrl", url);
	}
}
