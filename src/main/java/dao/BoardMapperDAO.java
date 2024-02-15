package dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import model.BoardVO;

public class BoardMapperDAO implements BoardMapper{
  
  SqlSession sqlSession;
  
  public BoardMapperDAO(SqlSession sqlSession) {
    this.sqlSession = sqlSession;
  }
  
  public BoardMapper mp() {
    return sqlSession.getMapper(BoardMapper.class);
  }
  
  @Override
  public List<BoardVO> getAll() {
    return mp().getAll();
  }

}
