package me.zhengjie.rest;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.RequiredArgsConstructor;
import me.zhengjie.annotation.Log;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 微笑检测
 * */

@RestController
@RequiredArgsConstructor
@Api(tags = "CV：微笑检测")
@RequestMapping("/api/image/smile")
public class FaceImageDetectionController {



    @Log("图片上传")
    @ApiOperation("图片上传")
    @GetMapping
    @PreAuthorize("@el.check('user:list','dept:list')")
    public ResponseEntity imageUpload(){


        return new ResponseEntity<>("ok", HttpStatus.OK);
    }
}
