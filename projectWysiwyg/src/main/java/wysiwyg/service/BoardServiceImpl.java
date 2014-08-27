package wysiwyg.service;

import java.util.List;

import javax.annotation.Resource;

import wysiwyg.board.vo.BoardVO;
import wysiwyg.dao.BoardDao;

public class BoardServiceImpl implements BoardService {
	@Resource(name="boardDao")
	private BoardDao boardDao;
	
	@Override
	public List<BoardVO> boardSelect(int bId) {
		return boardDao.boardSelect(bId);
	}

	@Override
	public int boardWrite(BoardVO vo) {
		// TODO Auto-generated method stub
		return boardDao.boardWrite(vo);
	}

	@Override
	public int boardDelete(BoardVO vo) {
		// TODO Auto-generated method stub
		return boardDao.boardDelete(vo);
	}

	@Override
	public int boardComment(String commentContents, String writer, int bId,
			int bNo) {
		// TODO Auto-generated method stub
		return boardDao.boardComment(commentContents, writer, bId, bNo);
	}
	

	@Override
	public List<BoardVO> boardSelectNotice(int bId) {
		return boardDao.boardSelectNotice(bId);
	}

	@Override
	public List<BoardVO> boardSelectQna(int bId) {
		return boardDao.boardSelectQna(bId);
	}

	@Override
	public int createBoard() {
		// TODO Auto-generated method stub
		return boardDao.createBoard();
	}

}
