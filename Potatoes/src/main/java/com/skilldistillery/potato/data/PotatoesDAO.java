package com.skilldistillery.potato.data;

import java.util.List;

import com.skilldistillery.potato.entities.PotatoType;

public interface PotatoesDAO {

	List<PotatoType> findall();
	PotatoType findById(int id);
	PotatoType create(PotatoType potato);
	PotatoType update(int potatoId, PotatoType updatingPotato);
	boolean deleteById(int id);
	public List<PotatoType> findPotatoByKeyword(String keyword);
}
