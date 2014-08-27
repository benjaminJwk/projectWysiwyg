package wysiwyg.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import wysiwyg.user.vo.UserVO;

public class UserDaoImpl extends SqlSessionDaoSupport implements UserDao {

	@Override
	public int userInsert(UserVO vo) {
		// TODO Auto-generated method stub
		return super.getSqlSession().insert("user.userInsert", vo);
	}

	@Override
	public int loginOk(UserVO vo) {
		// TODO Auto-generated method stub
		if(super.getSqlSession().selectOne("user.loginOk", vo) != null)
			return 1;
		return 0;
	}

	@Override
	public List<UserVO> selectAll() {
		// TODO Auto-generated method stub
		return super.getSqlSession().selectList("user.selectAll");
	}

	@Override
	public UserVO selectMyPage(String mail) {
		// TODO Auto-generated method stub
		return super.getSqlSession().selectOne("user.selectMyPage", mail);
	}

	@Override
	public int changePassword(UserVO vo) {
		// TODO Auto-generated method stub
		System.out.println("????????????????");
		return super.getSqlSession().update("user.changePassword", vo);
	}

}
