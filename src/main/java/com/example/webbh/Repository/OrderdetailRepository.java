package com.example.webbh.Repository;

import com.example.webbh.Bean.Orderdetail;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderdetailRepository extends JpaRepository<Orderdetail,Integer> {
    List<Orderdetail> findAllByOrderid(int orderid);
}
