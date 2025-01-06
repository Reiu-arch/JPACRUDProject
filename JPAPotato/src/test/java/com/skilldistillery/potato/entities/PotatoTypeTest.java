package com.skilldistillery.potato.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.Persistence;

class PotatoTypeTest {

	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private PotatoType potato;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAPotato");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		potato = em.find(PotatoType.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		potato = null;
	}

	@Test
	void test_potatoType_for_entity_mapping() {
		assertNotNull(potato);
		assertEquals("russet",potato.getName());
	}

}
