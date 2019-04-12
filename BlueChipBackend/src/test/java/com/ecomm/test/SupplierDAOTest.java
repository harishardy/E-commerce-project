package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.SupplierDAO;
import com.ecomm.model.Supplier;

public class SupplierDAOTest 
{

static SupplierDAO supplierDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		supplierDAO=(SupplierDAO)context.getBean("supplierDAO");
	}
	
	@Ignore
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
		
		supplier.setSupplierId(5);
		supplier.setSupplierName("Zebronic");
		supplier.setSupplierAddr("Zebronic with Basic");
		
		assertTrue("Problem in Adding Category: ",supplierDAO.addSupplier(supplier));
	}
	
	
	@Test
	public void listSupplierTest()
	{
		List<Supplier> listSuppliers=supplierDAO.listSupplier();
		
		assertTrue("Problem in Listing the Products",listSuppliers.size()>0);
		
		System.out.println("-----All Suppliers-----");
		for(Supplier supplier:listSuppliers)
		{
			System.out.print(supplier.getSupplierId()+":::");
			System.out.print(supplier.getSupplierName()+":::");
			System.out.print(supplier.getSupplierAddr()+":::");
			
		}
	}
	
	@Ignore
	@Test
	public void listSupplierCategoryWiseTest()
	{
		List<Supplier> listSuppliers=supplierDAO.listSupplierCategoryWise(2);
		
		assertTrue("Problem in Listing the Products",listSuppliers.size()>0);
		
		System.out.println("-----CategoryWise-----");
		for(Supplier supplier:listSuppliers)
		{
			System.out.print(supplier.getSupplierId()+":::");
			System.out.print(supplier.getSupplierName()+":::");
			System.out.print(supplier.getSupplierAddr()+":::");
			
		}
	}

}
