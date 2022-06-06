package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Table(name="Buyer")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Buyer {
    @Id
    @Column(name = "buyerid")
    private int buyerid;
    @Column(name = "buyername")
    private String buyername;
    private String sex;
    private int age;
}
