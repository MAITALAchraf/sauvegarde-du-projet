package com.sqli.demoMVC.model;




import com.sqli.demoMVC.constants.TypeDeProduit;

public class Produit {	

	/**
	 * l'identifient de produit 
	 */
     private int id;
     /**
      * libelle de produit
      */    
   
     private String libelle;
     /**
      * prix de produit
      */

     private double prix;
     /**
      * type de produit;
      */
     private TypeDeProduit type;
     
    /**
     * @return {@link #id} : identifiant de produit
     */  
	public int getId() {
		return id;
	}
	/**
	 * assigne la valeur de {@link #pId} � {@link #id} 
	 * @param pId : identifiant de produit
	 */
	public void setId(int pId) {
		this.id = pId;
	}
	/**
	 * @return {@link #libelle} : libelle de produit
	 */
	public String getLibelle() {
		return libelle;
	}
	/**
	 * assigne la valeur de {@link #pLibelle} � {@link #libelle} 
	 * @param pLibelle : libelle de produit
	 */
	public void setLibelle(String pLibelle) {
		this.libelle = pLibelle;
	}
	/**
	 * @return {@link #prix} : prix de produit
	 */
	public double getPrix() {
		return prix;
	}
	/**
	 * assigne la valeur de {@link #pPrix} � {@link #prix} 
	 * @param pPrix : prix de produit
	 */	
	public void setPrix(double pPrix) {
		this.prix = pPrix;
	}
	/**
	 * @return {@link #type} : type de produit
	 */
	public TypeDeProduit getType() {
		return type;
	}
	/**
	 * assigne la valeur de {@link #pType} � {@link #type} 
	 * @param pType : prix de produit
	 */	
	public void setType(TypeDeProduit pType) {
		this.type = pType;
	}
	
	public Produit(int pId, String pLibelle, double pPrix, TypeDeProduit pType) {
		this.id = pId;
		this.libelle = pLibelle;
		this.prix = pPrix;
		this.type = pType;
	}
	
	public Produit() {
		super();
	}
}