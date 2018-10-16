package com.ohmovie.security;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.ohmovie.dao.MemberDAO;

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
		

		log.info(mapper.login("admin00").toString());
		log.info(mapper.login("user00").toString());
		log.info(mapper.login("member00").toString());
		
	}
	
}
