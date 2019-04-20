package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO productDAO;
	
	@RequestMapping(value="/product")
	public String showProduct(Model m)
	{
		List<Product>productList=productDAO.listProducts();
		m.addAttribute("title", "Product");
		m.addAttribute("listProducts",productList);
		return "Product";
	}
	
	
	@RequestMapping(value="/addProduct",method=RequestMethod.POST)
	public String addProduct(@RequestParam("proName")String proName,@RequestParam("proDesc")String proDesc,@RequestParam("stock")int stock,@RequestParam("price")int price,@RequestParam("catId")int catId,@RequestParam("suppId")int suppId,Model m)
	{
		Product product=new Product();
		product.setProductName(proName);
		product.setProductDesc(proDesc);
		product.setStock(stock);
		product.setPrice(price);
		product.setCategoryId(catId);
		product.setSupplierId(suppId);
		
		
		productDAO.addProduct(product);
		List<Product>productList=productDAO.listProducts();
		m.addAttribute("listProducts",productList);
		m.addAttribute("title", "Product");
		return "Product";
	}
	
	@RequestMapping(value="/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		
		List<Product>productList=productDAO.listProducts();
		m.addAttribute("listProducts",productList);
		m.addAttribute("title", "Product");
		
		return "Product";
	}
	
	@RequestMapping(value="/editProduct/{productId}")
	public String editProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		
		
		m.addAttribute("product",product);
		m.addAttribute("title", "Update Product");
		
		return "UpdateProduct";
	}
	
	@RequestMapping(value="/updateProduct",method=RequestMethod.POST)
	public String updateProduct(@RequestParam("proId")int proId,@RequestParam("proName")String proName,@RequestParam("proDesc")String proDesc,@RequestParam("stock")int stock,@RequestParam("price")int price,@RequestParam("catId")int catId,@RequestParam("suppId")int suppId,Model m)
	{
		Product product=productDAO.getProduct(proId);
	
		product.setProductName(proName);
		product.setProductDesc(proDesc);
		product.setStock(stock);
		product.setPrice(price);
		product.setCategoryId(catId);
		product.setSupplierId(suppId);
		
		
		productDAO.updateProduct(product);
		List<Product>productList=productDAO.listProducts();
		m.addAttribute("listProducts",productList);
		m.addAttribute("title", "Product");
		return "Product";
	}
	
	
}
