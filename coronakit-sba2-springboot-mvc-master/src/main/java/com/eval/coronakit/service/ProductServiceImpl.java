package com.eval.coronakit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.eval.coronakit.dao.ProductMasterRepository;
import com.eval.coronakit.entity.ProductMaster;

@Service
public class ProductServiceImpl implements ProductService {

	@Autowired
	ProductMasterRepository repository;
	
	@Override
	public ProductMaster addNewProduct(ProductMaster product) {
		return this.repository.save(product);
	}

	@Override
	public List<ProductMaster> getAllProducts() {
		return this.repository.findAll();
	}

	@Override
	public ProductMaster deleteProduct(int productId) {
		ProductMaster product = this.getProductById(productId);
		if(product != null)
			this.repository.deleteById(productId);
		return product;
	}

	@Override
	public ProductMaster getProductById(int productId) {
		return this.repository.findById(productId).orElse(null);
	}

}
