package com.skilldistillery.petbnb.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.petbnb.entities.Pet;
import com.skilldistillery.petbnb.entities.User;

@Transactional
@Service
public class PettrDAOImpl implements PettrDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public User findUserById(int userId) {

		System.out.println(userId);
		User user = em.find(User.class, userId);

		return user;

	}

	@Override
	public List<Pet> findAllPets() {
		
		String queryString = "SELECT p FROM Pet p ORDER BY p.name";
		List<Pet> results = em.createQuery(queryString, Pet.class).getResultList();

		for (Pet element : results) {
			System.out.println(element.getName());
		}

		return results;
	}

	@Override
	public Pet findPet(int petId) {
		
		Pet pet = em.find(Pet.class, petId);
		
		return pet;
	}

	@Override
	public Pet updatePet(Pet pet, int petId) {
		Pet updatedPet = em.find(Pet.class, petId);
		updatedPet.setName(pet.getName());
		updatedPet.setBreed(pet.getBreed());
		updatedPet.setSpecialNeeds(pet.getSpecialNeeds());
		updatedPet.setDescription(pet.getDescription());
		updatedPet.setImage(pet.getImage());

		em.flush();

		return updatedPet;
	}

	@Override
	public Pet addPet(Pet addPet, int userId) {
			addPet.setUser(em.find(User.class, userId));
			addPet.setActive(true);
			em.persist(addPet);
			em.flush();
			return addPet;
		}

	@Override
	public boolean removePetById(int id) {
		System.out.println("AM I HERE?");
			Pet petRemoved = em.find(Pet.class, id);
			petRemoved.setActive(false);
			em.flush();
			
			if(em.find(Pet.class, id).isActive() == true) {
				return false;
			} else {
				return true;
			}
			
			
	}
	

}
