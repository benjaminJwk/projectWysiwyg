package wysiwyg.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import wysiwyg.board.vo.BoardVO;
import wysiwyg.board.vo.CommentVO;

public class BoardDaoImpl extends SqlSessionDaoSupport implements BoardDao {

	@Override
	public List<BoardVO> boardSelect(int bId) {
		// TODO Auto-generated method stub
		System.out.println(bId);
		System.out.println("dao!!!!!!");
		List<BoardVO> li = super.getSqlSession().selectList("board.boardSelect",bId);
		
		for(int i=0; i<li.size(); i++)
		{
			System.out.println(li.get(i).getBoardSubject());
		}
		return li;
	}

	@Override
	public int boardWrite(BoardVO vo) {
		System.out.println(vo.getBoardContents());
		return super.getSqlSession().insert("board.boardWrite",vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return super.getSqlSession().delete("board.boardDelete", vo);
	}

	@Override
	public int boardComment(String commentContents, String writer, int bId,
			int bNo) {
		// TODO Auto-generated method stub
		CommentVO vo = new CommentVO();
		vo.setBoardId(bId);
		vo.setBoardNo(bNo);
		vo.setCommentWriter(writer);
		vo.setCommentContents(commentContents);
		
		return super.getSqlSession().insert("board.boardComment", vo);
	}
	
	
	
	@Override
	public List<BoardVO> boardSelectNotice(int bId) {
		// TODO Auto-generated method stub
		System.out.println(bId);
		System.out.println("selectnotice dao!!!!!!");
		List<BoardVO> li = super.getSqlSession().selectList("board.boardSelectNotice",bId);
		
		for(int i=0; i<li.size(); i++)
		{
			System.out.println(li.get(i).getBoardSubject());
		}
		return li;
	}

	@Override
	public List<BoardVO> boardSelectQna(int bId) {
		// TODO Auto-generated method stub
		System.out.println(bId);
		System.out.println("selectqna dao!!!!!!");
		List<BoardVO> li = super.getSqlSession().selectList("board.boardSelectQna",bId);
		
		for(int i=0; i<li.size(); i++)
		{
			System.out.println(li.get(i).getBoardSubject());
		}
		return li;
	}

	@Override
	public int createBoard() {
		// TODO Auto-generated method stub
		int bId = super.getSqlSession().selectOne("board.maxId");
		System.out.println("maxId=" + bId );
		super.getSqlSession().insert("board.createBoard",bId);
		return bId;
	}
	
	
}
