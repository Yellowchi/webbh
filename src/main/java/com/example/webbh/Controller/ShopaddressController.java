package com.example.webbh.Controller;

import com.example.webbh.Bean.Shopaddress;
import com.example.webbh.Repository.ShopaddressRepository;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping("/api/address")
public class ShopaddressController {
    @Resource
    private ShopaddressRepository shopaddressRepository;

    @PostMapping("/update")
    public Shopaddress updateshopaddress(@RequestBody Shopaddress shopaddress){
        return shopaddressRepository.saveAndFlush(shopaddress);
    }

    @PostMapping("/delete/{said}")
    public void deleteshopaddress(@PathVariable int said){
        shopaddressRepository.deleteById(said);
    }

    @PostMapping("/insert")
    public void insertshopaddress(@RequestBody Shopaddress shopaddress){
        shopaddressRepository.saveAndFlush(shopaddress);
    }
}
