package model;

import java.io.Serializable;
import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BoardVO implements Serializable{

  private static final long serialVersionUID = 1L;
  
  private int seq;
  private String title;
  private String content;
  private String userid;
  private String name;
  private Date regdate;
  private int cnt;
}
