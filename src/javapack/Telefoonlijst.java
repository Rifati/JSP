package javapack;

import java.util.ArrayList;

public class Telefoonlijst {

	/**
	 * Klasse met een lijst van telefoon's
	 * @author piet
	 */
	private ArrayList<Telefoon> telefoonlijst;
	
	/**
	 * Constructor die de lijst aanmaakt en telefoon's toevoegt
	 */
	public Telefoonlijst() {
	    telefoonlijst = new ArrayList<Telefoon>();
	    Telefoon samsung1 = new Telefoon("Samsung", "Galaxy S7", 599, 
	  "../telefoonplaatjes/SamsungGalaxyS7.png");
	telefoonlijst.add(samsung1);
	Telefoon samsung2 = new Telefoon("Samsung", "Galaxy S7 edge", 699, 
	  "../telefoonplaatjes/SamsungGalaxy-S7Edge.jpg");
	telefoonlijst.add(samsung2);
	Telefoon apple = new Telefoon("Apple", " iPhone 5s ", 495, 
	  "../telefoonplaatjes/iphone5.png");
	telefoonlijst.add(apple);
	Telefoon apple2 = new Telefoon("Apple", " iPhone 6s", 800, 
	  "../telefoonplaatjes/iphone6.jpg");
	telefoonlijst.add(apple2);
	Telefoon apple3 = new Telefoon("Apple", " iPhone SE", 700, 
	  "../telefoonplaatjes/IphoneSE.png");
	telefoonlijst.add(apple3);
	Telefoon oneplus = new Telefoon("Oneplus", " OnePlus One", 400, 
	  "../telefoonplaatjes/OnePlusOne.jpeg");
	telefoonlijst.add(oneplus);
	Telefoon oneplus2 = new Telefoon("Oneplus",  "Oneplus 2", 450, 
	  "../telefoonplaatjes/oneplustwo.jpg");
	telefoonlijst.add(oneplus2);
	Telefoon huawei = new Telefoon("HUAWEI", " P9 Plus", 600, 
	  "../telefoonplaatjes/huaweip9.jpg");
	telefoonlijst.add(huawei);
	Telefoon huawei2 = new Telefoon("HUAWEI", " Nexus 6P", 550, 
	  "../telefoonplaatjes/Nexus6P.jpg");
	telefoonlijst.add(huawei2);
	Telefoon htc1 = new Telefoon("HTC", " One m9", 459, 
	  "../telefoonplaatjes/m9.jpg");
	telefoonlijst.add(htc1);
	
	 }
	
	/**
	 * 
	 * @return geeft de lijst met telefoon's
	 */
	public ArrayList<Telefoon> getLijst() {
	    return telefoonlijst;
	}
	
	
	
	/**
	 * Ten behoeve van het select merk input veld
	 * @return een lijst met alle unieke merken
	 */
	public ArrayList<String> getMerken() {
	    ArrayList<String> merken = new ArrayList<String>();
	    for (Telefoon telefoon: telefoonlijst) {
	        String merk = telefoon.getMerk();
	        if (!merken.contains(merk)) {
	            merken.add(merk);
	        }
	    }
	    return merken;
	}
}