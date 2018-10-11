package com.ohmovie.security;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ohmovie.dao.MemberDAO;
import com.ohmovie.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
	"classpath:spring/root-context.xml"
})
public class MemberMapperTests {

	private static final Logger log = LoggerFactory.getLogger(MemberMapperTests.class);
	
	@Autowired
	private MemberDAO mapper;
		
	@Test
	public void testRead() {
		

		log.info(mapper.read("admin00").toString());
		log.info(mapper.read("user00").toString());
		log.info(mapper.read("member00").toString());
		
	}
	
}
