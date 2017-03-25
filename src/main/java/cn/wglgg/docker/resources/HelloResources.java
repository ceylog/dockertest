package cn.wglgg.docker.resources;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;  

@RestController
public class HelloResources{

    @RequestMapping("")
    public String hello(){
        return "Hello! Docker!";
    }

}