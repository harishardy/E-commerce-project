package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Product;

public class ProductDAOTest 
{

static ProductDAO productDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	
	@Ignore
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		
		product.setProductName("Zebronic");
		product.setProductDesc("Zebronic  with Configuration");
		product.setStock(15);
		product.setSupplierId(1);
		product.setCategoryId(3);
		product.setPrice(4000);
		
		assertTrue("Problem in Adding Category: ",productDAO.addProduct(product));
	}
	
	@Test
	public void listProductTest()
	{
		List<Product> listProducts=productDAO.listProducts();
		
		assertTrue("Problem in Listing the Products",listProducts.size()>0);
		
		System.out.println("-----All Products-----");
		for(Product product:listProducts)
		{
			System.out.print(product.getProductId()+":::");
			System.out.print(product.getProductName()+":::");
			System.out.print(product.getProductDesc()+":::");
			System.out.print(product.getStock()+":::");
			System.out.println(product.getPrice()+":::");
		}
	}
	
	@Test
	public void listProductCategoryWiseTest()
	{
		List<Product> listProducts=productDAO.listProductCategoryWise(2);
		
		assertTrue("Problem in Listing the Products",listProducts.size()>0);
		
		System.out.println("-----CategoryWise-----");
		for(Product product:listProducts)
		{
			System.out.print(product.getProductId()+":::");
			System.out.print(product.getProductName()+":::");
			System.out.print(product.getProductDesc()+":::");
			System.out.print(product.getStock()+":::");
			System.out.println(product.getPrice()+":::");
		}
	}

}
