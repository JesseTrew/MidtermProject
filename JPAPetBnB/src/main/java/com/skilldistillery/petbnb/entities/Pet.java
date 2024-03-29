package com.skilldistillery.petbnb.entities;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

import org.hibernate.annotations.LazyCollection;
import org.hibernate.annotations.LazyCollectionOption;

@Entity
public class Pet {

//	F I E L D S

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String breed;

	@Column(name = "special_needs")
	private String specialNeeds;

	private String description;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;
	
	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy = "pet")
	private List<ReviewOfPet> reviewsOfPet;
	
	@ManyToOne
	@JoinColumn(name = "type_id")
	private PetType petType;

	@LazyCollection(LazyCollectionOption.FALSE)
	@OneToMany(mappedBy = "pet")
	private List<Reservation> reservations;
	
	private boolean active;
	
	@OneToMany(mappedBy = "pet")
	private List<PetImage> petImages;
	
//	C O N S T R U C T O R S

	public Pet() {
		super();
	}

	public Pet(int id, String name, String breed, String specialNeeds, String description, User user,
			List<ReviewOfPet> reviewsOfPet, PetType petType, List<Reservation> reservations) {
		super();
		this.id = id;
		this.name = name;
		this.breed = breed;
		this.specialNeeds = specialNeeds;
		this.description = description;
		this.user = user;
		this.reviewsOfPet = reviewsOfPet;
		this.petType = petType;
		this.reservations = reservations;
	}

	public Pet(int id, String name, String breed, String specialNeeds, String description, User user,
			List<ReviewOfPet> reviewsOfPet, PetType petType, List<Reservation> reservations, boolean active,
			List<PetImage> petImages) {
		super();
		this.id = id;
		this.name = name;
		this.breed = breed;
		this.specialNeeds = specialNeeds;
		this.description = description;
		this.user = user;
		this.reviewsOfPet = reviewsOfPet;
		this.petType = petType;
		this.reservations = reservations;
		this.active = active;
		this.petImages = petImages;
	}

//	M E T H O D S

	public void addPetImage(PetImage petImage) {
		if (petImages == null) {
			petImages = new ArrayList<>();
		}
		if (!petImages.contains(petImage)) {
			petImages.add(petImage);
			if (petImage.getPet() != null) {
				petImage.getPet().getPetImages().remove(petImage);
			}
		}
		petImage.setPet(this);
	}
	
	public void removeImage(PetImage petImage) {
		petImage.setPet(null);
		if (petImages != null) {
			petImages.remove(petImage);
		}
	}
	
	public void addReservation(Reservation reservation) {
		if (reservations == null) {
			reservations = new ArrayList<>();
		}
		if (!reservations.contains(reservation)) {
			reservations.add(reservation);
			if (reservation.getPet() != null) {
				reservation.getPet().getReservations().remove(reservation);
			}
		}
		reservation.setPet(this);
	}
	
	public void removeReservation(Reservation reservation) {
		reservation.setPet(null);
		if (reservations != null) {
			reservations.remove(reservation);
		}
	}
	
	public void addReviewOfPet(ReviewOfPet review) {
		if (reviewsOfPet == null) {
			reviewsOfPet = new ArrayList<>();
		}
		if (!reviewsOfPet.contains(review)) {
			reviewsOfPet.add(review);
			if (review.getPet() != null) {
				review.getPet().getReviewsOfPet().remove(review);
			}
		}
		review.setPet(this);
	}
	
	public void removeReviewOfPet(ReviewOfPet review) {
		review.setPet(null);
		if (reviewsOfPet != null) {
			reviewsOfPet.remove(review);
		}
	}
	
	@Override
	public String toString() {
		return "Pet [id=" + id + ", name=" + name + ", breed=" + breed + ", specialNeeds=" + specialNeeds
				+ ", description=" + description + ", petType=" + petType + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBreed() {
		return breed;
	}

	public void setBreed(String breed) {
		this.breed = breed;
	}

	public String getSpecialNeeds() {
		return specialNeeds;
	}

	public void setSpecialNeeds(String specialNeeds) {
		this.specialNeeds = specialNeeds;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public List<Reservation> getReservations() {
		return reservations;
	}

	public void setReservations(List<Reservation> reservations) {
		this.reservations = reservations;
	}

	public List<ReviewOfPet> getReviewsOfPet() {
		return reviewsOfPet;
	}

	public void setReviewsOfPet(List<ReviewOfPet> reviewsOfPet) {
		this.reviewsOfPet = reviewsOfPet;
	}

	public PetType getPetType() {
		return petType;
	}

	public void setPetType(PetType petType) {
		this.petType = petType;
	}
	
	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public List<PetImage> getPetImages() {
		return petImages;
	}

	public void setPetImages(List<PetImage> petImages) {
		this.petImages = petImages;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + id;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Pet other = (Pet) obj;
		if (id != other.id)
			return false;
		return true;
	}
}
