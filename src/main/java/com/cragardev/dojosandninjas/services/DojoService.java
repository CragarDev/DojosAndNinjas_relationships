package com.cragardev.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.cragardev.dojosandninjas.models.Dojo;
import com.cragardev.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	
	// Inject the repository
	private final DojoRepository dojoRepository;
	
	
	
	public DojoService(DojoRepository dojoRepository) {
		super();
		this.dojoRepository = dojoRepository;
	}



	//
	// Find All Dojos
	//
	public List<Dojo> allDojos() {
		return dojoRepository.findAll();
	}
	
	//
	// find One Dojo
	//
	public Dojo findDojo(Long id) {
		Optional<Dojo> optionalDojo = dojoRepository.findById(id);
		if(optionalDojo.isPresent()) {
			return optionalDojo.get();
		} else {
			return null;
		}
	}


	//
	// Create new Dojo
	//
	public Dojo createDojo(Dojo dojo) {
		return dojoRepository.save(dojo);
		
	}
}
