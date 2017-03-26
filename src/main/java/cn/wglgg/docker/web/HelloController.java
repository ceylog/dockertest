package cn.wglgg.docker.web;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class HelloController{

    @RequestMapping("")
    public String hello(){
        return "hello";
    }

    @RequestMapping("/hello")
    public String hello2(){
        return "{name:'xiaowang',age:15,sex:'男'}";
    }

}