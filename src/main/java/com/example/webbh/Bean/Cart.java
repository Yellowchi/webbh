package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Table(name="Cart")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Cart {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int cartid;
    private int buyerid;
    private int goodsid;
    private int num;
}
