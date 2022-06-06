package com.example.webbh.Repository;

import com.example.webbh.Bean.Goods;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface GoodsRepository extends JpaRepository<Goods,Integer> {
    List<Goods> findAllBySellerid(int sellerid);

    Goods findByGoodsid(int goodsid);

    List<Goods> findAllByGoodsnameContainingOrGoodsbrandContainingOrGoodskindContaining(String str, String str1, String str2);
    @Query("select max(goodsid) from Goods")
    int findMaxGoodsid();
}
