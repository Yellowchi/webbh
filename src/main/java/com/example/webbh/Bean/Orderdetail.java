package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.*;
import java.util.List;

@Table(name="Orderdetail")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Orderdetail {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int oddid;
    private int orderid;
    private String goodsname;
    private float goodsprice;
    private int num;
    private float sumprice;
}
