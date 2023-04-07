package com.firas.produits;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.firas.produits.entities.Produit;
import com.firas.produits.service.ProduitService;

@SpringBootApplication
public class Produits1Application implements CommandLineRunner {

	@Autowired
	ProduitService produitService;

	public static void main(String[] args) {
		SpringApplication.run(Produits1Application.class, args);
	}
	@Override
	public void run(String... args) throws Exception {
	produitService.saveProduit(new Produit("PC Dell", 2600.0, new Date()));
	produitService.saveProduit(new Produit("PC Asus", 2800.0, new Date()));
	produitService.saveProduit(new Produit("Imprimante Epson", 900.0, new Date()));

}}
