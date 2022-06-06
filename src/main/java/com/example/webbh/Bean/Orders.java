package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Table(name="Orders")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Orders {
    @Id
    private int orderid;
    @Column(name = "username")
    private String username;
    private String buyername;
    private String address;
    private String name;
    private String tel;
}
