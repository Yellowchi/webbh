package com.example.webbh.Controller;

import com.example.webbh.Bean.*;
import com.example.webbh.Repository.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.*;

@RestController
@RequestMapping("/api/user")
public class UserController {
    @Resource
    private UserRepository userRepository;
    @Resource
    private BuyerRepository buyerRepository;
    @Resource
    private ShopaddressRepository shopaddressRepository;
    @Resource
    private GoodsRepository goodsRepository;
    @Resource
    private ShopRepository shopRepository;
    @Resource
    private OdRepository odRepository;
    @Resource
    private OrdersRepository ordersRepository;
    @Resource
    private OrderdetailRepository orderdetailRepository;
    @PostMapping ("/login")
    public String login(@RequestBody User user){
        if(userRepository.findById(user.getUsername()) == null){
            return "没有找到用户";
        }
        if(userRepository.findByUsernameAndPassword(user.getUsername(), user.getPassword()) == null){
            return "密码错误";
        }
        return "true";
    }
    @PostMapping("/register")
    public String register(@RequestBody User user){
        System.out.println(userRepository.findById(user.getUsername()).isPresent());
        if (userRepository.findById(user.getUsername()).isPresent()){
            return "此用户已注册";
        }else{
            int buyerid = userRepository.findMaxBuyerid();
            int sellerid = (int) userRepository.findMaxSellerid();
            System.out.println(buyerid + "|" +sellerid);
            user.setBuyerid((buyerid+1));
            user.setSellerid((sellerid+1));
            userRepository.saveAndFlush(user);
            Buyer buyer = new Buyer();
            buyer.setBuyerid((buyerid+1));
            buyerRepository.saveAndFlush(buyer);
            Shop shop = new Shop();
            shop.setSellerid((sellerid+1));
            shopRepository.saveAndFlush(shop);
            return "true";
        }
    }
    @PostMapping("/update")
    public void update(@RequestBody Buyer buyer){
        buyerRepository.saveAndFlush(buyer);
    }
    @GetMapping("/getuserinfo/{username}")
    public Optional<Buyer> getuserinfo(@PathVariable String username){
        Optional<User> user = userRepository.findById(username);
        int buyerid = user.orElseThrow().getBuyerid();
        return buyerRepository.findById(buyerid);
    }
    @GetMapping("/getshopaddress/{username}")
    public List<Shopaddress> getshipaddress(@PathVariable String username){
        Optional<User> user = userRepository.findById(username);
        int buyerid = user.orElseThrow().getBuyerid();
        return shopaddressRepository.findAllByBuyerid(buyerid);
    }
    @GetMapping("/getid/{username}")
    public Optional<User> getid(@PathVariable String username){
        return userRepository.findById(username);
    }
    @GetMapping("/getgoodsinfo/{username}")
    public List<Goods> getgoodsinfo(@PathVariable String username){
        Optional<User> user = userRepository.findById(username);
        int sellerid = user.orElseThrow().getSellerid();
        return goodsRepository.findAllBySellerid(sellerid);
    }
    @PostMapping("/addgoodsinfo")
    public void addgoodsinfo(@RequestBody Goods goods){
        goodsRepository.saveAndFlush(goods);
    }
    @PostMapping("/addgoodsimg")
    public void addgoodsimg(@RequestParam MultipartFile file){
        System.out.println("================================");
        System.out.println(file.getOriginalFilename());
        int id = this.goodsRepository.findMaxGoodsid();
        id = id + 1;
        System.out.println(id);
        System.out.println("================================");
        File targetFile = new File("D:\\webbh\\front\\public","goods"+id+".jpg");
        try {
            file.transferTo(targetFile);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @GetMapping("/getallgoods")
    public List<Goods> getallgoods(){
        return goodsRepository.findAll();
    }
    @PostMapping("/testupload")
    public String upload(@RequestParam("img") MultipartFile file){
        return file.getOriginalFilename();
    }
    @GetMapping("/getorders/{username}")
    public List<Od> getorders(@PathVariable String username){
        int buyerid = userRepository.findBuyeridById(username);
        return odRepository.findAllByBuyerid(buyerid);
    }
    @GetMapping("/getordersnew/{username}")
    public Map getordersnew(@PathVariable String username){
        List<Orders> orderid = ordersRepository.findAllByUsername(username);
        Map<String,List> map = new HashMap();
        List<Orderdetail> orderdetails = new ArrayList<>();
        map.put("orders", orderid);
        for (int i = 0;i < orderid.size();i++){
            List<Orderdetail> orderdetails1 = orderdetailRepository.findAllByOrderid(orderid.get(i).getOrderid());
            for(int j = 0;j < orderdetails1.size();j++){
                orderdetails.add(orderdetails1.get(j));
            }
        }
        map.put("orderdetails",orderdetails);
        return map;
    }
}
