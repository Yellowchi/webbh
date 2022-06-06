package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Table(name="User")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class User {
    @Id
    @Column(name="username")
    private String username;
    @Column(name = "password")
    private String password;
    @Column(name="buyerid",nullable=false,insertable=true,updatable=false,columnDefinition="int not null UNIQUE key auto_increment")
    private int buyerid;
    @Column(name ="sellerid",nullable=false,insertable=true,updatable=false,columnDefinition="int not null UNIQUE key auto_increment")
    private int sellerid;
}
