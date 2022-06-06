package com.example.webbh.Bean;

import lombok.Data;
import lombok.ToString;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;
import org.springframework.stereotype.Component;

import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Shop")
@Data
@ToString
@Component
@Entity
@EntityListeners(AuditingEntityListener.class)
public class Shop {
    @Id
    private int sellerid;
    private String shopname;
    private String shopintro;
    private float shopscore;
}
