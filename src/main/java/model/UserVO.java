package model;

import java.io.Serializable;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserVO implements Serializable{

  private static final long serialVersionUID = 1L;
  
  private String userid;
  private String password;
  private String name;
  private String nickname;
  private String role;

}
