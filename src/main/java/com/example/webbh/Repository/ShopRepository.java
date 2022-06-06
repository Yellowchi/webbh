package com.example.webbh.Repository;

import com.example.webbh.Bean.Shop;
import com.example.webbh.Bean.Shopaddress;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ShopRepository extends JpaRepository<Shop,Integer> {

}
