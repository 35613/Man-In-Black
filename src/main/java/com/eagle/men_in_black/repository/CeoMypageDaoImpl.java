package com.eagle.men_in_black.repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.eagle.men_in_black.model.CeoMypageDto;
@Repository
public class CeoMypageDaoImpl implements CeoMypageDao {
	Logger loger = LoggerFactory.getLogger(this.getClass());
	private final String namespace="com.eagle.repository.mapper.CeoMypage";
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	@Override
	public List<CeoMypageDto> do_ceomypage_main(HashMap<String, String> map) {
		String statement = namespace+".do_ceomypage_main";
		return sqlSession.selectList(statement, map);
	}

	@Override
	public List<CeoMypageDto> do_search_review(Map<String, Object> map) {
		String statement = namespace+".do_search_review";
		return sqlSession.selectList(statement, map);
	}


	@Override
	public List<CeoMypageDto> do_search_QnA(Map<String, Object> map) {
		String statement = namespace+".do_search_QnA";
		return sqlSession.selectList(statement, map);
	}


	@Override
	public String do_search_delstep(int SEQ) {
		String statement = namespace+".do_search_delstep";
		return sqlSession.selectOne(statement, SEQ);
	}


	@Override
	public int do_update_delstep(HashMap<String, String> map) {
		String statement = namespace+".do_update_delstep";
		return sqlSession.update(statement, map);
	}


	@Override
	public int do_insert_product(HashMap<String, String> map) {
		String statement = namespace+".do_insert_product";
		return sqlSession.insert(statement, map);
	}


	@Override
	public int do_insert_product_detail(CeoMypageDto map) {
		
		String statement = namespace+".do_insert_product_detail";
		loger.debug(statement);
		loger.debug(map.toString());
		return sqlSession.update(statement, map);
	}


	@Override
	public int do_insert_product_photo(HashMap<String, String> map) {
		String statement = namespace+".do_insert_product_photo";
		return sqlSession.insert(statement, map);
	}

	@Override
	public int do_select_proseq() {
		String statement = namespace+".do_select_proseq";
		return sqlSession.selectOne(statement);
	}

}
