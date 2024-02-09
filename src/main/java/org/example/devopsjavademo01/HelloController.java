package org.example.devopsjavademo01;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {

    @GetMapping("/v1/hello")
    public ResponseEntity<String> hello() {
        return ResponseEntity.ok("Hello World V1");
    }

    @GetMapping("/v2/hello")
    public ResponseEntity<String> helloV2() {
        return ResponseEntity.ok("Hello World V2");
    }
}
