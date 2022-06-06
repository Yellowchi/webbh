package com.example.webbh.Controller;

import com.example.webbh.Bean.Goods;
import com.example.webbh.Repository.GoodsRepository;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/goods")
public class GoodsController {
    @Resource
    private GoodsRepository goodsRepository;
    @PostMapping("/update")
    public Goods changegoodsinfo(@RequestBody Goods goods){
        return goodsRepository.saveAndFlush(goods);
    }
    @PostMapping("/delete/{goodsid}")
    public void deletegoodsinfo(@PathVariable int goodsid){
        goodsRepository.deleteById(goodsid);
    }
    @GetMapping("/getbyid/{goodsid}")
    public Optional<Goods> getgoodsinfobyid(@PathVariable int goodsid){
        return goodsRepository.findById(goodsid);
    }
    @GetMapping(value = "/search")
    public List<Goods> searchgoods(@RequestParam("searchinfo") String str){
        System.out.println(str);
        return goodsRepository.findAllByGoodsnameContainingOrGoodsbrandContainingOrGoodskindContaining(str,str,str);
    }
}
