package com.cragardev.dojosandninjas.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cragardev.dojosandninjas.models.Ninja;
import com.cragardev.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	
	// Inject the repository
	private final NinjaRepository ninjaRepository;

	public NinjaService(NinjaRepository ninjaRepository) {
		super();
		this.ninjaRepository = ninjaRepository;
	}
	
	
	//
	// find all Ninjas
	//
	public List<Ninja> allNinjas() {
		return ninjaRepository.findAll();
	}


	
	//
	// Create New Ninja
	//
	public Ninja createNinja(Ninja ninja) {
		return ninjaRepository.save(ninja);
		
	}
	
	//
	// find One Ninja
	//

}
