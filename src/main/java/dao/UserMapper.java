package dao;

import java.util.Map;

import model.UserVO;

public interface UserMapper {
  UserVO getOne(Map<String, String> loginInfo);
}
