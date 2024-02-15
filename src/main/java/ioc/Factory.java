package ioc;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.UserMapper;
import dao.UserMapperDAO;
import myBatis.MyBatisManager;
import srv.UserService;
import srv.UserServiceImpl;

public enum Factory {
  INSTANCE;
  
  private SqlSessionFactory sqlSessionFactory = MyBatisManager.getSqlSessionFactory();
  private SqlSession sqlSession = sqlSessionFactory.openSession(false); //Not Autocommit
  
  private UserMapper userDao = new UserMapperDAO(sqlSession);
  private UserService userSrv = new UserServiceImpl(userDao);
  public UserService getUserSrv() {
    return userSrv;
  }
  
  
}
