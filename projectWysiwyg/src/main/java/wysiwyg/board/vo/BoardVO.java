package wysiwyg.board.vo;

import java.util.List;

public class BoardVO {
	
	private int boardId;
	private int boardNo;
	private String boardWriter;
	private String boardSubject;
	private String boardContents;
	private String boardDate;
	private List<CommentVO> comments;
	
	public BoardVO(){}
	
	public BoardVO(int boardId, int boardNo, String boardWriter, String boardSubject, String boardContents)
	{
		this.boardId = boardId;
		this.boardNo = boardNo;
		this.boardWriter = boardWriter;
		this.boardSubject = boardSubject;
		this.boardContents = boardContents;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardWriter() {
		return boardWriter;
	}

	public void setBoardWriter(String boardWriter) {
		this.boardWriter = boardWriter;
	}

	public String getBoardSubject() {
		return boardSubject;
	}

	public void setBoardSubject(String boardSubject) {
		this.boardSubject = boardSubject;
	}

	public String getBoardContents() {
		return boardContents;
	}

	public void setBoardContents(String boardContents) {
		this.boardContents = boardContents;
	}

	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public List<CommentVO> getComments() {
		return comments;
	}

	public void setComments(List<CommentVO> comments) {
		this.comments = comments;
	}
	
	
}
