package com.medico.app.web.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.medico.app.web.models.entities.Medico;
import com.medico.app.web.models.entities.Receta;
import com.medico.app.web.models.services.IMedicoService;

@Controller
@RequestMapping(value="/medico")
public class MedicoController {
  
	@Autowired
	private IMedicoService service;
	
	@GetMapping(value="/create")
	public String create(Model model) {
		Medico medico = new Medico();
		model.addAttribute("medico",medico);
		model.addAttribute("title","Agregar nuevo médico");
		return "medico/form";
	}
	
	@GetMapping(value="/retrieve/{id}")
	public String retrieve(@PathVariable(value="id")Integer id, 
			Model model) {
		Medico medico = service.findById(id);
		model.addAttribute("medico",medico);
		return "medico/card";
	}
	
	@GetMapping(value="/update/{id}")
	public String update(@PathVariable(value="id")Integer id,
			Model model) {
		Medico medico = service.findById(id);
		model.addAttribute("medico",medico);
		return "medico/form";
	}
	
	@GetMapping(value="/delete/{id}")
	public String delete(@PathVariable(value="id")Integer id, 
			Model model) {
		try {
			service.delete(id);
		}
		catch(Exception ex){
			model.addAttribute("error", ex.toString());
		}
		return "redirect:/medico/list";
	}
	
	@GetMapping(value="/list")
	public String list(Model model) {
		List<Medico> medicos = service.findAll();
		model.addAttribute("medicos", medicos);
		model.addAttribute("title","Listado de medicos");
		return "medico/list";		
	}
	
	@PostMapping(value="/save")
	public String save(@Valid Medico medico,  BindingResult result,Model model, RedirectAttributes message, SessionStatus session) {
		try {
			
			if(result.hasErrors()) {        		
        		return "medico/form";
        	} 
			String msg = medico.getIdpersona() == null ? medico.getNombre() + " ha sido agregado a la lista de medicos." : medico.getNombre() + medico.getApellido() + " ha sido actualizado.";
			service.save(medico);
			session.setComplete();            
            message.addFlashAttribute("success", msg);
		}
		catch(Exception ex) {
			message.addFlashAttribute("error",ex.toString());
		}	
		return "redirect:/medico/list";
	}
}












