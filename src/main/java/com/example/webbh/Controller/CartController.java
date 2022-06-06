package com.example.webbh.Controller;

import com.example.webbh.Bean.Cart;
import com.example.webbh.Bean.Goods;
import com.example.webbh.Repository.CartRepository;
import com.example.webbh.Repository.GoodsRepository;
import com.example.webbh.Repository.UserRepository;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/api/cart")
public class CartController {
    @Resource
    private CartRepository cartRepository;
    @Resource
    private GoodsRepository goodsRepository;
    @Resource
    private UserRepository userRepository;
    @PostMapping("/addincart")
    public void addincart(@RequestBody Cart cart){
        System.out.println("success");
        cartRepository.saveAndFlush(cart);
    }
    @GetMapping("/getcartinfo/{username}")
    public Map getcartinfo(@PathVariable String username) {
        int buyerid = userRepository.findBuyeridById(username);
        List<Cart> li = cartRepository.findAllByBuyerid(buyerid);
        List<Goods> ligoods = new ArrayList<Goods>();
//        System.out.println(li.size());
//        System.out.println(li.get(0).getBuyerid());
        for (int i = 0; i < li.size(); i++) {
            ligoods.add(goodsRepository.findByGoodsid(li.get(i).getGoodsid()));
        }
        Map<String,List> map = new HashMap<>();
        map.put("cartinfo",li);
        map.put("goodsinfo",ligoods);
        return map;
    }
    @PostMapping("/deleteincart/{cartid}")
    public void deletegoodsincart(@PathVariable int cartid){
        cartRepository.deleteById(cartid);
    }
}
