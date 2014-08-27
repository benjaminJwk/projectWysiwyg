package wysiwyg.dao;

import java.util.List;

import wysiwyg.user.vo.UserVO;

public interface UserDao {

	int userInsert(UserVO vo);
	int loginOk(UserVO vo);
	List<UserVO> selectAll();
	UserVO selectMyPage(String mail);
	int changePassword(UserVO vo);
}
