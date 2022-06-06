package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Table(name = "Od")
@Data
@ToString
@Component
@Entity
public class Od {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int orderid;
    @Column(name = "goodsname")
    private String goodsname;
    @Column(name = "odnum")
    private int odnum;
    @Column(name = "sumprice")
    private float sumprice;
    @Column(name = "buyerid")
    private int buyerid;
}
