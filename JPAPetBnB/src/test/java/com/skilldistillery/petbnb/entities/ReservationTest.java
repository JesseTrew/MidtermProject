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

class ReservationTest {

	private static EntityManagerFactory emf;
	private static EntityManager em;
	private Reservation reservation;

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
		reservation = em.find(Reservation.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		reservation = null;
	}

	@Test
	@DisplayName("very simple test case")
	void test1() {
		System.out.println(reservation);
		assertNotNull(reservation);
//		assertEquals("testuser", client.getUsername());
	}

}
