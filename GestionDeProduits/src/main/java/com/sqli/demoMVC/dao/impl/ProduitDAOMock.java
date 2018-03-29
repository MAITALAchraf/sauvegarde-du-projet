package com.sqli.demoMVC.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.sqli.demoMVC.constants.TypeDeProduit;
import com.sqli.demoMVC.dao.ProduitDAO;
import com.sqli.demoMVC.model.Produit;


@Component
public class ProduitDAOMock implements ProduitDAO{
	
	private static Map<Integer,Produit> list;
	
	static {
		list = new HashMap <Integer,Produit>();
		list.put(1, new Produit(1,"fromage",16.00,TypeDeProduit.LAITIER));
		list.put(2, new Produit(2,"abricot",32.00,TypeDeProduit.LEGUMES_FRUITS));
		list.put(3, new Produit(3,"farine",100.00,TypeDeProduit.ALIMENTATION));
		list.put(4, new Produit(4,"gel de cheveau",20.00,TypeDeProduit.sqli));		
	}

	public void creerProduit(Produit pProduit) {
		pProduit.setId(list.size()+1);
		list.put(list.size()+1, pProduit);
	}

	public void modifierProduit(Produit pProduit) {
        list.put(pProduit.getId(),pProduit);
	}

	public void supprimerProduit(final Integer pProduitId) {
		list.remove(pProduitId);
	}

	public Produit chercherProduit(Integer id) {
		return list.get(id);
	}

	public List<Produit> getAll() {
		return new ArrayList<Produit>(list.values());
	}

}
