package com.supply.service.impl;

import com.github.pagehelper.PageHelper;
import com.google.common.collect.Maps;
import com.supply.constant.ErrorCodeEnum;
import com.supply.exception.BusinessException;
import com.supply.mapper.MemberMapper;
import com.supply.entity.Member;
import com.supply.param.MemberQueryParam;
import com.supply.service.MemberService;
import com.supply.util.MD5Util;
import com.supply.util.PageUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Optional;

/**
 * Created by bowen on 2018-02-27 00:25
 */
@Service
public class MemberServiceImpl implements MemberService {
    private static final Logger LOG = LoggerFactory.getLogger(MemberServiceImpl.class);

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

    @Override
    public Member login(Member member) throws BusinessException {
        if(Objects.isNull(member)){
            throw new BusinessException(ErrorCodeEnum.PARAM_NULL);
        }else if(StringUtils.isEmpty(member.getAccount())){
            throw new BusinessException(ErrorCodeEnum.LGOIN_ACCOUNT_NULL);
        }else if(StringUtils.isEmpty(member.getPassword())){
            throw new BusinessException(ErrorCodeEnum.LOGIN_PASSWORD_NULL);
        }
        member.setPassword(MD5Util.EncoderByMd5(member.getPassword()));
        Member obj = memberMapper.selectOne(member);
        return Optional.ofNullable(obj).orElseThrow(() -> new BusinessException(ErrorCodeEnum.LOGIN_ERROR));
    }
}
