package com.example.webbh.Repository;

import com.example.webbh.Bean.Orders;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface OrdersRepository extends JpaRepository<Orders,Integer> {
    @Query("select MAX(orderid) from Orders ")
    int findMaxOrderid();

    List<Orders> findAllByUsername(String username);
}
