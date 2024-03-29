package com.skilldistillery.petbnb.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "review_of_host")
public class ReviewOfHost {

//	F I E L D S

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private int rating;
	
	private String review;
	
	@ManyToOne
	@JoinTable(name="reservation",
	joinColumns=@JoinColumn(name = "id"),
	inverseJoinColumns = @JoinColumn(name="host_id"))
	private Host host;
	
	@OneToOne
	@JoinColumn(name="reservation_id")
	private Reservation reservation;


//	C O N S T R U C T O R S

	public ReviewOfHost() {
		super();
	}

	public ReviewOfHost(int id, int rating, String review, Host host) {
		super();
		this.id = id;
		this.rating = rating;
		this.review = review;
		this.host = host;
	}

//	M E T H O D S

	@Override
	public String toString() {
		return "ReviewOfHost [id=" + id + ", rating=" + rating + "review:" + review;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}

	public Host getHost() {
		return host;
	}

	public void setHost(Host host) {
		this.host = host;
	}

	public Reservation getReservation() {
		return reservation;
	}

	public void setReservation(Reservation reservation) {
		this.reservation = reservation;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((host == null) ? 0 : host.hashCode());
		result = prime * result + id;
		result = prime * result + rating;
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
		ReviewOfHost other = (ReviewOfHost) obj;
		if (host == null) {
			if (other.host != null)
				return false;
		} else if (!host.equals(other.host))
			return false;
		if (id != other.id)
			return false;
		if (rating != other.rating)
			return false;
		return true;
	}

}
