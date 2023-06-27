package com.example.xia_firstproject.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.ToString;

import javax.annotation.processing.Generated;

@Entity // @Entity를 붙여줘야 DB가 해당 객체를 인식할 수 있음
@AllArgsConstructor
@ToString
public class Article {

    @Id // 주민등록번호와 같은 역할을 하는 대표값을 지정
    @GeneratedValue
    private Long id;

    @Column
    private String title;

    @Column
    private String content;

}
