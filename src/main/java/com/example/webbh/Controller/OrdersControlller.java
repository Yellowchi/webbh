package com.example.webbh.Controller;

import com.example.webbh.Bean.*;
import com.example.webbh.Repository.*;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/orders")
public class OrdersControlller {
    @Resource
    private UserRepository userRepository;
    @Resource
    private BuyerRepository buyerRepository;
    @Resource
    private ShopaddressRepository shopaddressRepository;
    @Resource
    private GoodsRepository goodsRepository;
    @Resource
    private OrdersRepository ordersRepository;
    @Resource
    private OrderdetailRepository orderdetailRepository;
    @PostMapping("/insert")
    public void insert(@RequestParam("buyerid") int buyerid,
                       @RequestParam("goodsid") int[] goodsid,
                       @RequestParam("said") int said,
                       @RequestParam("num") int[] num){
        System.out.println(goodsid[0]);
        Orders order = new Orders();
        String username = userRepository.findUsernameByBuyerid(buyerid);
        order.setUsername(username);
        String buyername = buyerRepository.findBuyernameById(buyerid);
        order.setBuyername(buyername);
        Optional<Shopaddress> shopaddress = shopaddressRepository.findById(said);
        order.setAddress(shopaddress.get().getAddress());
        order.setName(shopaddress.get().getName());
        order.setTel(shopaddress.get().getTel());
        ordersRepository.saveAndFlush(order);
        int orderid = ordersRepository.findMaxOrderid();
        ////////////////////////////////////////////////
        for(int i = 0;i < goodsid.length;i++){
            Orderdetail orderdetail = new Orderdetail();
            System.out.println("1"+i);
            orderdetail.setOrderid(orderid);
            System.out.println("2"+i);
            Optional<Goods> goods;
            goods = goodsRepository.findById(goodsid[i]);
            orderdetail.setGoodsname(goods.get().getGoodsname());
            orderdetail.setGoodsprice(goods.get().getGoodsprice());
            orderdetail.setNum(num[i]);
            orderdetail.setSumprice((goods.get().getGoodsprice() * num[i]));
            orderdetailRepository.saveAndFlush(orderdetail);
        }
//        List<Orderdetail> orderdetails = new ArrayList<Orderdetail>();
//        for (int i =0;i < goodsid.length;i++){
//            orderdetails.s
//            Optional<Goods> goods = goodsRepository.findById(goodsid[i]);
//            orderdetails.get(i).setGoodsname(goods.get().getGoodsname());
//            orderdetails.get(i).setGoodsprice(goods.get().getGoodsprice());
//            orderdetails.get(i).setNum(num[i]);
//            orderdetails.get(i).setSumprice(goods.get().getGoodsprice() * num[i]);
//        }
//        orderdetailRepository.saveAllAndFlush(orderdetails);
    }
}

