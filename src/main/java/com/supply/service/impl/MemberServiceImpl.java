package com.supply.service.impl;

import com.github.pagehelper.PageHelper;
import com.google.common.collect.Maps;
import com.supply.mapper.MemberMapper;
import com.supply.entity.Member;
import com.supply.param.MemberQueryParam;
import com.supply.service.MemberService;
import com.supply.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

/**
 * Created by bowen on 2018-02-27 00:25
 */
@Service
public class MemberServiceImpl implements MemberService {

    @Autowired
    private MemberMapper memberMapper;

    @Override
    public List<Member> findAll() {
        return memberMapper.selectAll();
    }

    @Override
    public List<Member> findForPage(MemberQueryParam memberQueryParam, PageUtil pageUtil) {
        PageHelper.startPage(pageUtil.getPage(), pageUtil.getSize());
        Example example = new Example(Member.class);
        return memberMapper.selectByExample(example);
    }

    @Override
    public int add(Member member) {
        return memberMapper.insert(member);
    }

    @Override
    public int update(Member member) {
        return memberMapper.updateByPrimaryKey(member);
    }
}
