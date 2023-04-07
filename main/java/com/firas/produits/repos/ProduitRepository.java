package com.firas.produits.repos;

import org.springframework.data.jpa.repository.JpaRepository;
import com.firas.produits.entities.Produit;

public interface ProduitRepository extends JpaRepository<Produit, Long> {

}
