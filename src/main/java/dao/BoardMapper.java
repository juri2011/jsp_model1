package dao;

import java.util.List;

import model.BoardVO;

public interface BoardMapper {
  List<BoardVO> getAll();
  BoardVO getOne(int seq);
  void increaseCnt(int seq);
}
