package com.sqli.demoMVC.controller;

import java.io.IOException;
import java.util.List;





import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.sqli.demoMVC.model.Produit;
import com.sqli.demoMVC.service.ProduitService;

@Controller
public class ProduitController {

	@Autowired
	private ProduitService produitService;

	@RequestMapping(value = "/acceuil")
	public ModelAndView listerProduits(ModelAndView pModel) throws IOException {
		List<Produit> listProduit = produitService.getAll();
		pModel.addObject("listProduit", listProduit);
		pModel.setViewName("accueil");
		
		return pModel;
	}  
	

	
	@RequestMapping(value="/ajouterProduit",method=RequestMethod.GET)
	public ModelAndView ajouterProduit(ModelAndView model){
		model.addObject("produit",new Produit());
		model.setViewName("ProduitFormulaire");
		return model;
	}
	@RequestMapping(value="/ajouterProduit",method=RequestMethod.POST)
	public String enregistrerProduit(@ModelAttribute @Validated Produit produit , BindingResult errors){
		
		if(errors.hasErrors()){
			return "ProduitFormulaire";
		}
		produitService.creerProduit(produit);		
		return "redirect:/";
	}
	
	/**
	 * show the edit page take  @param id 
	 * @return Produit Object to prepare the page 
	 * */
	@RequestMapping(value="/modifier/{id}",method=RequestMethod.GET)
	public ModelAndView modifierProduit(@PathVariable("id") int id,ModelAndView pModel){
		pModel.addObject("produit", produitService.chercherProduit(id));
		pModel.setViewName("ModifierProduit");
		return pModel;
	}
	/**
	 * the action in Edit "produit" page  
	 *  {@link = GestionDeProduit} 
	 * */
	@RequestMapping(value="/modifier/{id}",method=RequestMethod.POST)
	public String modifierProduit(@ModelAttribute Produit produit){
		produitService.modifierProduit(produit);
		return "redirect:/";
	}
	
	@RequestMapping(value="/supprimer/{id}",method=RequestMethod.GET)
	public String supprimerProduit(@PathVariable("id") int id){
		produitService.supprimerProduit(id);
		return "redirect:/";
	}
	
	@RequestMapping(value="/chercherProduit",method=RequestMethod.GET)
	public ModelAndView chercherProduit(@RequestParam("id") int id,ModelAndView model){
		
		model.addObject("produit", produitService.chercherProduit(id));
		model.setViewName("chercher");
		return model;
	}

}

