package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Table(name="Shopaddress")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Shopaddress {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name = "said")
    private int said;
    @Column(name = "buyerid")
    private int buyerid;
    private String name;
    private String tel;
    private String address;
}
