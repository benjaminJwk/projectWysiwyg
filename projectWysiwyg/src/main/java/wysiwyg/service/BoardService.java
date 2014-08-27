package wysiwyg.service;

import java.util.List;

import wysiwyg.board.vo.BoardVO;

public interface BoardService {

	public List<BoardVO> boardSelect(int Bid);
	public int boardWrite(BoardVO vo);
	public int boardDelete(BoardVO vo);
	public int boardComment(String commentContents, String writer, int bId,int bNo);
	public List<BoardVO> boardSelectNotice(int bId);
	public List<BoardVO> boardSelectQna(int bId);
	public int createBoard();
}
