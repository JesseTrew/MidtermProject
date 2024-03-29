package com.skilldistillery.petbnb.entities;

import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class PetTypeTest {

	private static EntityManagerFactory emf;
	private static EntityManager em;
	private PetType petType;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("PetBnBPU");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		petType = em.find(PetType.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		petType = null;
	}

	@Test
	@DisplayName("very simple test case")
	void test1() {
		assertNotNull(petType);
	}
	@Test
	@DisplayName("PetType internal test")
	void test2() {
		assertEquals("Dog", petType.getType());
	}
	@Test
	@DisplayName("PetType relationship with Pet")
	void test3() {
		assertEquals("Cat", em.find(Pet.class, 1).getPetType().getType());
	}

}
