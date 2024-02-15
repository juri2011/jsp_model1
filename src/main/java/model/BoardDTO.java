package model;

import java.sql.Date;

import lombok.ToString;

import lombok.Setter;

import lombok.Getter;

@Getter
@Setter
@ToString
public class BoardDTO {
  private int seq;
  private String title;
  private String content;
  private String userid;
  private String name;
  private Date regdate;
  private int cnt;
}
