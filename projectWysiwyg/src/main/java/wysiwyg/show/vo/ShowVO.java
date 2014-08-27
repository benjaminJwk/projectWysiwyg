package wysiwyg.show.vo;

public class ShowVO {
	
	private int pageId;
	private String userMail;
	private String pageName;
	private String templteName;
		
	public ShowVO(){}
	
	public ShowVO(int pageId, String userMail, String templteName, String pageName)
	{
		this.pageId = pageId;
		this.pageName=pageName;
		this.templteName=templteName;
		this.userMail=userMail;
	}

	public String getPageName() {
		return pageName;
	}

	public void setPageName(String pageName) {
		this.pageName = pageName;
	}

	public String getTemplteName() {
		return templteName;
	}

	public void setTemplteName(String templteName) {
		this.templteName = templteName;
	}

	public int getPageId() {
		return pageId;
	}

	public void setPageId(int pageId) {
		this.pageId = pageId;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}	
}
