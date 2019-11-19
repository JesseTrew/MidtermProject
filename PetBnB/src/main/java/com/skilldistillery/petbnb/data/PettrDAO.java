package com.skilldistillery.petbnb.data;

import java.util.Date;
import java.util.List;

import com.skilldistillery.petbnb.entities.Host;
import com.skilldistillery.petbnb.entities.HostService;
import com.skilldistillery.petbnb.entities.Pet;
import com.skilldistillery.petbnb.entities.Reservation;
import com.skilldistillery.petbnb.entities.ReviewOfHost;
import com.skilldistillery.petbnb.entities.User;

public interface PettrDAO {

	User findUserById(int userId);

	List<Pet> findAllPets();

	Pet findPet(int petId);

	Pet updatePet(Pet pet, int petId);
	
	Pet addPet(Pet addpet, int userId);
	
	User removePetById(int id);

	User refreshUser(int userId);
	
	List<Host> searchHostByLocation (String city, String state);

	Host becomeHost(int id);

//	Host updateHost(Host host, int hostId);

	Host refreshHost(int userId);

	Host addServicestoHostById(int[] selections, int hostId);

	Host findHostById(int hostId);
	
	double findHostAvgRatingById (int hostId);
	
	double findPetAvgRatingById (int petId);

	List<HostService> getAllServices();

	int getAverageOfHostReviewRatings(List<ReviewOfHost> reviewsOfHost);
	
	public Host getHostById(int hostId) ;

	Reservation findReservationById (int rid);

	Pet addPetImage(int petId, String url);

	Reservation createReservation(int petId, int hostId, int serviceId, Date openDate, Date closeDate);
}