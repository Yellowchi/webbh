package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.*;

@Table(name="Goods")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Goods {
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int goodsid;
    private int sellerid;
    @Column(name = "goodsname")
    private String goodsname;
    @Column(name = "goodskind")
    private String goodskind;
    @Column(name = "goodsbrand")
    private String goodsbrand;
    private float goodsprice;
    private String goodsintro;
    private int goodsnum;
}
