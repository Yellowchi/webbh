package com.example.webbh.Repository;

import com.example.webbh.Bean.Cart;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface CartRepository extends JpaRepository<Cart,Integer> {
    Cart findByBuyerid(int buyerid);

    List<Cart> findAllByBuyerid(int buyerid);
}
