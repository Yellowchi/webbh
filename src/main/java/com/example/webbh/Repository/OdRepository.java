package com.example.webbh.Repository;

import com.example.webbh.Bean.Od;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OdRepository extends JpaRepository<Od,Integer> {
    List<Od> findAllByBuyerid(int buyerid);
}
