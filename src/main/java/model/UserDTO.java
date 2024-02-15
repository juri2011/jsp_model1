package model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Getter
@Setter
public class UserDTO {
  private String userid;
  private String password;
  private String name;
  private String role;
}
