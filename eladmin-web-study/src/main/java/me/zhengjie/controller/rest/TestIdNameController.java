/*
*  Copyright 2019-2020 Zheng Jie
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*  http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*/
package me.zhengjie.controller.rest;

import me.zhengjie.annotation.Log;
import me.zhengjie.controller.domain.TestIdName;
import me.zhengjie.controller.service.TestIdNameService;
import me.zhengjie.controller.service.dto.TestIdNameQueryCriteria;
import org.springframework.data.domain.Pageable;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import io.swagger.annotations.*;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;

/**
* @website https://el-admin.vip
* @author wg01
* @date 2020-05-30
**/
@RestController
@RequiredArgsConstructor
@Api(tags = "study - wgcrud管理")
@RequestMapping("/api/testIdName")
public class TestIdNameController {

    private final TestIdNameService testIdNameService;

    @Log("导出数据")
    @ApiOperation("导出数据")
    @GetMapping(value = "/download")
    @PreAuthorize("@el.check('testIdName:list')")
    public void download(HttpServletResponse response, TestIdNameQueryCriteria criteria) throws IOException {
        testIdNameService.download(testIdNameService.queryAll(criteria), response);
    }

    @GetMapping
    @Log("查询wgcrud")
    @ApiOperation("查询wgcrud")
    @PreAuthorize("@el.check('testIdName:list')")
    public ResponseEntity<Object> query(TestIdNameQueryCriteria criteria, Pageable pageable){
        return new ResponseEntity<>(testIdNameService.queryAll(criteria,pageable),HttpStatus.OK);
    }

    @PostMapping
    @Log("新增wgcrud")
    @ApiOperation("新增wgcrud")
    @PreAuthorize("@el.check('testIdName:add')")
    public ResponseEntity<Object> create(@Validated @RequestBody TestIdName resources){
        return new ResponseEntity<>(testIdNameService.create(resources),HttpStatus.CREATED);
    }

    @PutMapping
    @Log("修改wgcrud")
    @ApiOperation("修改wgcrud")
    @PreAuthorize("@el.check('testIdName:edit')")
    public ResponseEntity<Object> update(@Validated @RequestBody TestIdName resources){
        testIdNameService.update(resources);
        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
    }

    @Log("删除wgcrud")
    @ApiOperation("删除wgcrud")
    @PreAuthorize("@el.check('testIdName:del')")
    @DeleteMapping
    public ResponseEntity<Object> delete(@RequestBody Integer[] ids) {
        testIdNameService.deleteAll(ids);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}