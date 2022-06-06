package com.example.webbh.Repository;

import com.example.webbh.Bean.Shopaddress;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ShopaddressRepository extends JpaRepository<Shopaddress,Integer> {
    List<Shopaddress> findAllByBuyerid(int buyerid);

    int findBuyeridBySaid(Integer said);
}
