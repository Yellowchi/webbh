package com.example.webbh.Controller;

import com.example.webbh.Bean.Od;
import com.example.webbh.Repository.OdRepository;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping("/api/order")
public class OdController {
    @Resource
    private OdRepository odRepository;
    @PostMapping("/insert")
    public void insert(@RequestBody Od order){
        System.out.println(order.getGoodsname());
        odRepository.saveAndFlush(order);
    }
}
