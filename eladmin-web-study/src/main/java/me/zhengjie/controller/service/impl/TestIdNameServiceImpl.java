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
package me.zhengjie.controller.service.impl;

import me.zhengjie.controller.domain.TestIdName;
import me.zhengjie.utils.ValidationUtil;
import me.zhengjie.utils.FileUtil;
import lombok.RequiredArgsConstructor;
import me.zhengjie.controller.repository.TestIdNameRepository;
import me.zhengjie.controller.service.TestIdNameService;
import me.zhengjie.controller.service.dto.TestIdNameDto;
import me.zhengjie.controller.service.dto.TestIdNameQueryCriteria;
import me.zhengjie.controller.service.mapstruct.TestIdNameMapper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import me.zhengjie.utils.PageUtil;
import me.zhengjie.utils.QueryHelp;
import java.util.List;
import java.util.Map;
import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/**
* @website https://el-admin.vip
* @description 服务实现
* @author wg01
* @date 2020-05-30
**/
@Service
@RequiredArgsConstructor
public class TestIdNameServiceImpl implements TestIdNameService {

    private final TestIdNameRepository testIdNameRepository;
    private final TestIdNameMapper testIdNameMapper;

    @Override
    public Map<String,Object> queryAll(TestIdNameQueryCriteria criteria, Pageable pageable){
        Page<TestIdName> page = testIdNameRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder),pageable);
        return PageUtil.toPage(page.map(testIdNameMapper::toDto));
    }

    @Override
    public List<TestIdNameDto> queryAll(TestIdNameQueryCriteria criteria){
        return testIdNameMapper.toDto(testIdNameRepository.findAll((root, criteriaQuery, criteriaBuilder) -> QueryHelp.getPredicate(root,criteria,criteriaBuilder)));
    }

    @Override
    @Transactional
    public TestIdNameDto findById(Integer id) {
        TestIdName testIdName = testIdNameRepository.findById(id).orElseGet(TestIdName::new);
        ValidationUtil.isNull(testIdName.getId(),"TestIdName","id",id);
        return testIdNameMapper.toDto(testIdName);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public TestIdNameDto create(TestIdName resources) {
        return testIdNameMapper.toDto(testIdNameRepository.save(resources));
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public void update(TestIdName resources) {
        TestIdName testIdName = testIdNameRepository.findById(resources.getId()).orElseGet(TestIdName::new);
        ValidationUtil.isNull( testIdName.getId(),"TestIdName","id",resources.getId());
        testIdName.copy(resources);
        testIdNameRepository.save(testIdName);
    }

    @Override
    public void deleteAll(Integer[] ids) {
        for (Integer id : ids) {
            testIdNameRepository.deleteById(id);
        }
    }

    @Override
    public void download(List<TestIdNameDto> all, HttpServletResponse response) throws IOException {
        List<Map<String, Object>> list = new ArrayList<>();
        for (TestIdNameDto testIdName : all) {
            Map<String,Object> map = new LinkedHashMap<>();
            map.put(" name",  testIdName.getName());
            list.add(map);
        }
        FileUtil.downloadExcel(list, response);
    }
}