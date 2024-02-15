package ioc;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dao.BoardMapper;
import dao.BoardMapperDAO;
import dao.UserMapper;
import dao.UserMapperDAO;
import myBatis.MyBatisManager;
import srv.BoardService;
import srv.BoardServiceImpl;
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
  
  private BoardMapper boardDao = new BoardMapperDAO(sqlSession);
  private BoardService boardSrv = new BoardServiceImpl(boardDao);
  public BoardService getBoardSrv() {
    return boardSrv;
  }
  
  
}
