package com.example.webbh.Repository;

import com.example.webbh.Bean.Buyer;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BuyerRepository extends JpaRepository<Buyer,Integer> {
    @Query("select buyername from Buyer where buyerid = ?1")
    String findBuyernameById(int buyerid);
}
