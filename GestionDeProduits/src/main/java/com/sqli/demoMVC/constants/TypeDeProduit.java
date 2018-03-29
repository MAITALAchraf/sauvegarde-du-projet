package com.sqli.demoMVC.constants;

public enum TypeDeProduit {
	
	sqli ("sqli","0001"),
	oujda ("oujda","0002"),
	LEGUMES_FRUITS ("LEGUMES_FRUITS","0003"),
	ALIMENTATION ("ALIMENTATION","0004"),
	LAITIER ("LAITIER","0005"),
	VIANDES ("VIANDES","0006"),
	POISSON ("POISSON","0007"),
	EPICES_FRUITSECS ("EPICES_FRUITSECS","0008"),
	ELECTRONIQUE("ELECTRONIQUE","0009");
	
	/**
	 * Identifiant de la famille de produits
	 */
	private String codeFamille;
	
	/**
	 * 
	 */
	private String libelleFamille;

	/**
	 * @param pCodeFamille: le code famille d'un type de produit
	 */
	private TypeDeProduit(String pLibelleFamille,String pCodeFamille) {
		this.libelleFamille = pLibelleFamille;
		this.codeFamille = pCodeFamille;
	}

    /**
     * @return le codeFamille d'un type de produit
     */
	public String getCodeFamille() {
		return codeFamille;
	}


	public String getLibelleFamille() {
		return libelleFamille;
	}

	public void setLibelleFamille(String libelleFamille) {
		this.libelleFamille = libelleFamille;
	}

	/**
	 * assigne la valeur de {@link #pCodeFamille} au champ {@link #codeFamille}
     * @param pCodeFamille : le codeFamille d'un type de produit donn�e
     */
	public void setCodeFamille(String pCodeFamille) {
		this.codeFamille = pCodeFamille;
	}
	
	public static TypeDeProduit getTypeByCdeFamille(final String pCodeFamille){
		for(TypeDeProduit pType : TypeDeProduit.values()){
			if (pCodeFamille.equals(pType.getCodeFamille())){
				return pType;
			}
		}
		return null;
	}
}