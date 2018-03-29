package com.sqli.demoMVC.service.impl;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sqli.demoMVC.constants.TypeDeProduit;
import com.sqli.demoMVC.dao.ProduitDAO;
import com.sqli.demoMVC.model.Produit;
import com.sqli.demoMVC.service.ProduitService;

@Service
public class ProduitServiceImpl implements ProduitService{
	
    @Autowired
    private ProduitDAO produitDAO;
	
	public void creerProduit(Produit pProduit) {
		produitDAO.creerProduit(pProduit);
	}

	public void modifierProduit(Produit pProduit) {
		produitDAO.modifierProduit(pProduit);		
	}

	public void supprimerProduit(Integer pProduitId) {
		produitDAO.supprimerProduit(pProduitId);	
	}

	public Produit chercherProduit(Integer pId) {
		Optional<Produit> findProd = Optional.ofNullable(produitDAO.chercherProduit(pId));
		
		return findProd.orElse(new Produit(0,"00",00,TypeDeProduit.ALIMENTATION));
	}

	public List<Produit> getAll() {
		return produitDAO.getAll();
	}

}
