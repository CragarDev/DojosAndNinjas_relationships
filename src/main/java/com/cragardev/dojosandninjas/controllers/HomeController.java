package com.cragardev.dojosandninjas.controllers;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cragardev.dojosandninjas.models.Dojo;
import com.cragardev.dojosandninjas.models.Ninja;
import com.cragardev.dojosandninjas.services.DojoService;
import com.cragardev.dojosandninjas.services.NinjaService;


@Controller
public class HomeController {
	
	// Inject the Dojo and Ninja Services
	//
	private final DojoService dojoService;
	private final NinjaService ninjaService;
	
	
	public HomeController(DojoService dojoService, NinjaService ninjaService) {
		super();
		this.dojoService = dojoService;
		this.ninjaService = ninjaService;
	}
	
	
	//
    // ========= landing/home/index 1 ===========
	// List of Dojos
    //

	@GetMapping("/")
    public String index() {

        return "index.jsp";
    }
    
    //
    // ========= landing/home/index 2 ===========
    // Show List of Dojos
    //
    
    @GetMapping("/dojos")
    public String dashboard(Model model) {
    	
    	// send all the dojos to the JSP
    	model.addAttribute("dojos", dojoService.allDojos());
    	
    	return "index.jsp";
    }

    //
    // ========= Show One Dojo with Ninjas Page ==========================
    //

    @GetMapping("/dojos/showOneDojo/{id}") // need to add the id
    public String showOneDojo(
    		Model model,
    		@PathVariable(value="id") Long id) {
    	
    	// get the dojo from the Service
    	Dojo dojo = dojoService.findDojo(id);
    	
    	// send dojo to the JSP
    	model.addAttribute("dojo", dojo);
    	
        return "showOneDojo.jsp";
    }

    
    // ---------------------------------------- CREATE NEW DOJO-----------
    //
    // ========= Create New Dojo page ===========
    //
    @GetMapping("/dojos/newDojo")
    public String newDojo(@ModelAttribute("dojo") Dojo dojo) {
    	
    	return "newDojo.jsp";
    }
    
    //
    // ========= Create Dojo Processing
    //

    @PostMapping("/dojos/newDojo")
    public String newDojoProcess(
    		@Valid
    		@ModelAttribute("dojo") Dojo dojo,
    		BindingResult result,
    		Model model) {
    	
    	if(result.hasErrors()) {
    		model.addAttribute("dojo", dojo);
    		return "newDojo.jsp";
    	} else {
    		dojoService.createDojo(dojo);
    		return "redirect:/dojos";
    	}
    	
    }
    
    // ---------------------------------------- CREATE NEW NINJA-----------
    //
    // ========= Create New Ninja page ===========
    //
    @GetMapping("/dojos/newNinja")
    public String newNinja(
    		Model model,
    		@ModelAttribute("ninja") Ninja ninja) {
    	
    	model.addAttribute("dojos", dojoService.allDojos());
    	
    	return "newNinja.jsp";
    }
    
    //
    // ========= Create Ninja Processing
    //
    
    @PostMapping("/dojos/newNinja")
    public String newNinjaProcess(
    		@Valid
    		@ModelAttribute("ninja") Ninja ninja,
    		BindingResult result,
    		Model model) {
    	
    	if(result.hasErrors()) {
    		model.addAttribute("ninja", ninja);
    		return "newNinja.jsp";
    	} else {
    		ninjaService.createNinja(ninja);
    		return "redirect:/dojos";
    	}
    	
    }

    
    
    //
    // §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
    //
	
	 


    
}