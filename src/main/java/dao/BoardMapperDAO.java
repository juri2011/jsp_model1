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

  @Override
  public BoardVO getOne(int seq) {
    return mp().getOne(seq);
  }

  @Override
  public void increaseCnt(int seq) {
    try {
      mp().increaseCnt(seq);
      sqlSession.commit();
    }catch(Exception e) {
      e.printStackTrace();
      sqlSession.rollback();
    }
  }

	@Override
	public void update(BoardVO vo) {
		try {
			mp().update(vo);
			sqlSession.commit();
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}
	}

	@Override
	public void save(BoardVO vo) {
		try {
			mp().save(vo);
			sqlSession.commit();
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}
	}

	@Override
	public void delete(int seq) {
		try {
			mp().delete(seq);
			sqlSession.commit();
		}catch(Exception e) {
			e.printStackTrace();
			sqlSession.rollback();
		}
	}

}
