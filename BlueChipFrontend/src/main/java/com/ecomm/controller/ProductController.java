package com.ecomm.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Category;
import com.ecomm.model.Product;
import com.ecomm.model.Supplier;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="/product")
	public String showProduct(Model m)
	{
		Product product=new Product();
		m.addAttribute("product",product);
		
		List<Product>productList=productDAO.listProduct();
		m.addAttribute("listProducts",productList);
		
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("categoryList",this.getCategoryList(categoryList));
		
		List<Supplier>supplierList=supplierDAO.listSupplier();
		m.addAttribute("supplierList",this.getSupplierList(supplierList));
		
		return "Product";
	}
	
	
	
	
	public LinkedHashMap<Integer,String> getCategoryList(List<Category> categoryList)
	{
		LinkedHashMap categoryList1=new LinkedHashMap();
		
		int i=0;
		while(i<categoryList.size())
		{
			Category category=categoryList.get(i);
			categoryList1.put(category.getCategoryId(),category.getCategoryName());
			i++;
		}
		
		
		
		return categoryList1;
	}
	
	
	
	
	public LinkedHashMap<Integer,String> getSupplierList(List<Supplier> supplierList)
	{
		LinkedHashMap supplierList1=new LinkedHashMap();
		
		int i=0;
		while(i<supplierList.size())
		{
			Supplier supplier=supplierList.get(i);
			supplierList1.put(supplier.getSupplierId(),supplier.getSupplierName());
			i++;
		}
		
		
		
		return supplierList1;
	}
	
	
	
	
	@RequestMapping(value="/InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product1,Model m)
	{
		productDAO.addProduct(product1);
		
		
		
		List<Product>productList=productDAO.listProduct();
		m.addAttribute("listProducts",productList);
		
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("categoryList",this.getCategoryList(categoryList));
		
		List<Supplier>supplierList=supplierDAO.listSupplier();
		m.addAttribute("supplierList",this.getSupplierList(supplierList));
		
		
		return "Product";
	}
	
	@RequestMapping(value="/deleteProduct/{productId}")
	public String deleteProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		
		Product product1=new Product();
		m.addAttribute("product",product1);
		
		List<Product>productList=productDAO.listProduct();
		m.addAttribute("listProducts",productList);
		
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("categoryList",this.getCategoryList(categoryList));
		
		
		return "Product";
	}
	
	@RequestMapping(value="/editProduct/{productId}")
	public String editProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDAO.getProduct(productId);
		
		
		m.addAttribute("product",product);
		
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("categoryList",this.getCategoryList(categoryList));
		
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
		List<Product>productList=productDAO.listProduct();
		m.addAttribute("listProducts",productList);
		m.addAttribute("title", "Product");
		return "Product";
	}
	
	
}
