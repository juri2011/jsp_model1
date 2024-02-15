package srv;

import java.util.Map;

import dao.UserMapper;
import model.UserDTO;
import model.UserVO;

public class UserServiceImpl implements UserService{
  
  private UserMapper userDao;
  
  public UserServiceImpl(UserMapper userDao) {
    this.userDao = userDao;
  }
  
  @Override
  public UserDTO getOne(Map<String, String> loginInfo) {
   
    UserVO vo = userDao.getOne(loginInfo);
    UserDTO dto = null;
   
    if(vo!=null) {
      dto = new UserDTO();
      dto.setName(vo.getName());
      dto.setPassword(vo.getPassword());
      dto.setRole(vo.getRole());
      dto.setUserid(vo.getUserid());
    }
    
    return dto;
  }

}
