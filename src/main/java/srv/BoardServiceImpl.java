package srv;

import java.util.ArrayList;
import java.util.List;

import dao.BoardMapper;
import model.BoardDTO;
import model.BoardVO;

public class BoardServiceImpl implements BoardService{
  
  private BoardMapper boardDao;
  
  public BoardServiceImpl(BoardMapper boardDao) {
    this.boardDao = boardDao;
  }
  
  @Override
  public List<BoardDTO> getAll() {
    List<BoardVO> voList = boardDao.getAll();
    List<BoardDTO> list = null;
    
    if(voList!=null) {
      list = new ArrayList<BoardDTO>();
      for(BoardVO vo : voList) {
        BoardDTO dto = new BoardDTO();
        dto.setCnt(vo.getCnt());
        dto.setContent(vo.getContent());
        dto.setName(vo.getName());
        dto.setRegdate(vo.getRegdate());
        dto.setSeq(vo.getSeq());
        dto.setTitle(vo.getTitle());
        dto.setUserid(vo.getUserid());
        
        list.add(dto);
      }
    }
    
    return list;
  }

  @Override
  public BoardDTO getOne(int seq) {
    BoardVO vo = boardDao.getOne(seq);
    BoardDTO dto = null;
    if(vo!=null) {
      dto = new BoardDTO();
      dto.setCnt(vo.getCnt());
      dto.setContent(vo.getContent());
      dto.setName(vo.getName());
      dto.setRegdate(vo.getRegdate());
      dto.setSeq(vo.getSeq());
      dto.setTitle(vo.getTitle());
      dto.setUserid(vo.getUserid());
    }
    return dto;
  }

  @Override
  public void increaseCnt(int seq) {
    boardDao.increaseCnt(seq);
  }

	@Override
	public void update(BoardDTO dto) {
		BoardVO vo = new BoardVO();
		vo.setSeq(dto.getSeq());
		vo.setTitle(dto.getTitle());
		vo.setContent(dto.getContent());
		
		boardDao.update(vo);
	}

	@Override
	public void save(BoardDTO dto) {
		BoardVO vo = new BoardVO();
		vo.setUserid(dto.getUserid());
		vo.setName(dto.getName());
		vo.setTitle(dto.getTitle());
		vo.setContent(dto.getContent());
		
		boardDao.save(vo);
	}

	@Override
	public void delete(int seq) {
		boardDao.delete(seq);
	}

}
