package com.supply.service;

import com.supply.entity.Member;
import com.supply.exception.BusinessException;
import com.supply.param.MemberQueryParam;
import com.supply.util.PageUtil;

import java.util.List;
import java.util.Map;

/**
 * Created by bowen on 2018-02-27 00:24
 */
public interface MemberService {

    List<Member> findAll();

    List<Member> findForPage(MemberQueryParam memberQueryParam, PageUtil pageUtil);

    int add(Member member);

    int update(Member member);

    Member login(Member member) throws BusinessException;

    Member findByMemberId(Integer memberId);
}
