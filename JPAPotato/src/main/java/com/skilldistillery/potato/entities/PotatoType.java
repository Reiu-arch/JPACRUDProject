package com.skilldistillery.potato.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "potato_type")
public class PotatoType {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	@Column(name = "interior_color")
	private String interiorColor;
	
	@Column(name = "exterior_color")
	private String exteriorColor;
	
	@Column(name = "best_uses")
	private String bestUses;
	
	@Column(name = "description")
	private String description;


	public PotatoType() {
		super();
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

	public String getInteriorColor() {
		return interiorColor;
	}

	public void setInteriorColor(String interiorColor) {
		this.interiorColor = interiorColor;
	}

	public String getExteriorColor() {
		return exteriorColor;
	}

	public void setExteriorColor(String exteriorColor) {
		this.exteriorColor = exteriorColor;
	}

	public String getBestUses() {
		return bestUses;
	}
	
	public void setBestUses(String bestUses) {
		this.bestUses = bestUses;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Override
	public String toString() {
		return "PotatoType [id=" + id + ", name=" + name + ", interiorColor=" + interiorColor + ", exteriorColor="
				+ exteriorColor + ", bestUses=" + bestUses + ", description=" + description + "]";
	}

	
	

	
	
	
	
}
