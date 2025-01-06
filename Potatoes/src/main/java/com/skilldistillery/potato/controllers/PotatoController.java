package com.skilldistillery.potato.controllers;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.skilldistillery.potato.data.PotatoesDAO;
import com.skilldistillery.potato.entities.PotatoType;

@Controller
public class PotatoController {
	
	@Autowired
	private PotatoesDAO potatoDAO;
	
	@RequestMapping(path = {"/", "home.do"})
	public String home(Model model) {
		model.addAttribute("potatoList", potatoDAO.findall());
		return "home";
	}
	
	@GetMapping(path = "getPotato.do")
	public String getPotato(Model model, @RequestParam("potatoId") int potatoId) {
		PotatoType potatoInfo = potatoDAO.findById(potatoId);
		model.addAttribute("potato", potatoInfo);
		return "potato/showPotato";
	}
	
	@GetMapping(path = "newPotato.do")
	public String goNewPotato(Model model) {
		return "potato/newPotato";
	}
	@GetMapping(path = "/error")
	public String error(Model model) {
		return "error";
	}
	
	@PostMapping(path = "newPotato.do")
	public String createNewPotato(PotatoType potato, Model model) {
		System.out.println("Potato info: "+ potato);
		potato = potatoDAO.create(potato);
		return "redirect:/getPotato.do?potatoId=" + potato.getId();
	}
	
	@GetMapping(path = {"updatePotato.do"})
	public String goUpdatePotato(@RequestParam(name="id", required = true, defaultValue = "0")int id, Model model) {
		PotatoType potatoInfo = potatoDAO.findById(id);
		model.addAttribute("potato", potatoInfo);
		return "potato/updatePotato";
	}
	
	@PostMapping(path = {"updatePotato.do"})
	public String updatePotato(PotatoType potato) {
		int potatoId = potato.getId();
		potato = potatoDAO.update(potatoId, potato);
		return "redirect:/getPotato.do?potatoId=" + potato.getId();
	}
	
	@PostMapping(path = {"deletePotato.do"})
	public String goDeletePotato(@RequestParam(name="id", required = true, defaultValue = "0")int potatoId) {
		potatoDAO.deleteById(potatoId);
		return "potato/deletePotato";
	}
	@PostMapping(path = { "findPotato.do" })
	public String searchPotatoesByKeyword(@RequestParam(name = "name", required = true, defaultValue = "") String name, Model model) {
	    if (name.trim().isEmpty()) {
	        model.addAttribute("potatoes", new ArrayList<>()); // Return an empty list
	        model.addAttribute("keyword", name);
	        return "potato/findPotato";
	    }
	    List<PotatoType> potatoes = potatoDAO.findPotatoByKeyword(name);
	    model.addAttribute("potatoes", potatoes);
	    model.addAttribute("keyword", name);
	    return "potato/findPotato";
	}

}
