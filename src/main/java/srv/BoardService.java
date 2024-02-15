package srv;

import java.util.List;

import model.BoardDTO;

public interface BoardService {
  List<BoardDTO> getAll();
  BoardDTO getOne(int seq);
  void increaseCnt(int seq);
  void update(BoardDTO dto);
  void save(BoardDTO dto);
  void delete(int seq);
}
