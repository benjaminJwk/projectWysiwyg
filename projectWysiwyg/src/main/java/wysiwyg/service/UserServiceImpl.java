package wysiwyg.service;

import java.util.List;

import javax.annotation.Resource;

import wysiwyg.dao.UserDao;
import wysiwyg.user.vo.UserVO;

public class UserServiceImpl implements UserService {
	
	@Resource(name="userDao")
	private UserDao userDao;
	@Override
	public int userInsert(UserVO vo) {
		// TODO Auto-generated method stub
		return userDao.userInsert(vo);
	}

	@Override
	public int loginOk(UserVO vo) {
		// TODO Auto-generated method stub
		return userDao.loginOk(vo);
	}

	@Override
	public List<UserVO> selectAll() {
		// TODO Auto-generated method stub
		return userDao.selectAll();
	}

	@Override
	public UserVO selectMyPage(String mail) {
		// TODO Auto-generated method stub
		return userDao.selectMyPage(mail);
	}

	@Override
	public int changePassword(UserVO vo) {
		// TODO Auto-generated method stub
		return userDao.changePassword(vo);
	}
	
}
