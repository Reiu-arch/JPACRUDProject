package com.skilldistillery.potato.data;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.skilldistillery.potato.entities.PotatoType;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.transaction.Transactional;


//https://stackoverflow.com/questions/17860696/not-allowed-to-create-transaction-on-shared-entitymanager-use-spring-transacti
//in this stack overflow discussion it states that with the transactional tag, the .getTransaction.(commit or begin) is unneeded as the entire process is already being started and committed via that tag.
@Transactional
@Service
public class PotatoesDAOJpaImpl implements PotatoesDAO{

	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<PotatoType> findall() {
		String jpql = "SELECT p FROM PotatoType p";
		
		return em.createQuery(jpql, PotatoType.class).getResultList();
	}

	@Override
	public PotatoType findById(int id) {
		return em.find(PotatoType.class, id);
	}

	@Transactional
	@Override
	public PotatoType create(PotatoType potato) {
		
		em.persist(potato);
		em.flush();
		
		return potato;
	}
	
	@Transactional
	@Override
	public PotatoType update(int potatoId, PotatoType updatingPotato) {
		
		PotatoType managedPotato = em.find(PotatoType.class, potatoId);
		managedPotato.setExteriorColor(updatingPotato.getExteriorColor());
		managedPotato.setInteriorColor(updatingPotato.getInteriorColor());
		managedPotato.setName(updatingPotato.getName());
		em.persist(managedPotato);
		em.flush();
		
		return updatingPotato;
	}

	//since the transactional tag doesnt allow the .getTransaction.rollback, this is the workaround 
	@Transactional(rollbackOn=Exception.class)
	@Override
	public boolean deleteById(int id) {
		

		try {
			PotatoType dyingPotato = em.find(PotatoType.class, id);
			em.remove(dyingPotato);
			em.flush();
			System.out.println("Goodnight potato.");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("potato could not be obliterated.");
			return false;
		}
		
		
		return true;
	}
	
	//for this one im wondering if i can have the word be searched for it to be case insensitive
	@Transactional
	@Override
	public List<PotatoType> findPotatoByKeyword(String keyword) {
	    if (keyword == null || keyword.trim().isEmpty()) {
	        return new ArrayList<>(); // This will return an empty array list, but i also put a check on the controller. Works fine but still relatively unsure
	    }

	    String jpql = "SELECT p FROM PotatoType p WHERE p.name LIKE :keyword";
	    return em.createQuery(jpql, PotatoType.class)
	             .setParameter("keyword", "%" + keyword.trim() + "%")
	             .getResultList();
	}


}
