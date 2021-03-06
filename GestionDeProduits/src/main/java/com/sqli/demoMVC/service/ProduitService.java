package com.sqli.demoMVC.service;

import java.util.List;

import com.sqli.demoMVC.model.Produit;

public interface ProduitService {
	/**
	 * ajoute un nouveau produit � la liste des produits.
	 * @param pProduit  : le produit � ajouter.
	 */
	public void creerProduit(final Produit pProduit);
	
	/**
	 * mettre � jour un produit existant.
	 * @param pProduit  : le produit � mettre � jour.
	 */
	public void modifierProduit(final Produit pProduit);
	
	/**
	 * supprime un produit existant.
	 * @param pProduit  : le produit � supprimer.
	 */
	public void supprimerProduit (final Integer pProduitId);
	
	/**
	 * cherche un produit existant.
	 * @param pId  : le libelle de produit � trouver.
	 * @return le produit correspond au libelle en param�tre.
	 */	
	public Produit chercherProduit (final Integer pId);
	
	/**
	 * renvoie la liste des produits existants. 
	 * @return l'ensemble des produits.
	 */
	public List<Produit> getAll();
	
}
