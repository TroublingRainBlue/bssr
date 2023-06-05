package cn.connext.bbs;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("cn.connext.bbs.dao")
public class YonyongBbsApplication {

    public static void main(String[] args) {
        SpringApplication.run(YonyongBbsApplication.class, args);
    }

}

