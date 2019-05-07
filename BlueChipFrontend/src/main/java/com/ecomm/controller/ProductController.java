package com.ecomm.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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
		m.addAttribute("productList",productList);
		
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("categorylist",categoryList);
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
	public String insertProduct(@ModelAttribute("product")Product product1,@RequestParam("pimage") MultipartFile fileImage,Model m)
	{
		productDAO.addProduct(product1);
		
		
		
		
		String path="/Users/harishhardy/git/E-comm/BlueChipFrontend/src/main/webapp/resources/images/";
		
		path=path+String.valueOf(product1.getProductId())+".jpg";
		
		File image=new File(path);
		
		if(!fileImage.isEmpty())
		{
			try
			{
				byte[] buffer=fileImage.getBytes();
				FileOutputStream fos=new FileOutputStream(image);
				BufferedOutputStream bos=new BufferedOutputStream(fos);
				bos.write(buffer);;
				bos.close();
				
 			}
			catch(Exception e)
			{
				m.addAttribute("ErrorInfo", e.getMessage());
			}
			
		}
		else
		{
			m.addAttribute("ErrorInfo", "Problem Occured");
		}
		
		
		Product product=new Product();
		m.addAttribute("product",product);
		
		List<Product>productList=productDAO.listProduct();
		m.addAttribute("productList",productList);
		
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
		m.addAttribute("productList",productList);
		
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
		
		List<Supplier>supplierList=supplierDAO.listSupplier();
		m.addAttribute("supplierList",this.getSupplierList(supplierList));
		
		return "UpdateProduct";
	}
	

	
	
	
	
	
	
	
	@RequestMapping(value="/productDisplay")
	public String productDisplay(Model m)
	{
		List<Product> listProducts=productDAO.listProduct();
		m.addAttribute("productlist",listProducts);
		
		
		return "ProductDisplay";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/productCategoryWise/{categoryId}")
	public String productCategoryWise(@PathVariable("categoryId")int categoryId,Model m)
	{
		List<Product> listProductCategoryWise=productDAO.listProductCategoryWise(categoryId); 
		m.addAttribute("productlist",listProductCategoryWise);
		
		
		return "ProductDisplay";
	}
	
	
	

	
	
	
	
	
	
	
	@RequestMapping(value="/UpdateProduct",method=RequestMethod.POST)
	public String updateProduct(@RequestParam("proId")int productId,@RequestParam("productName")String productName,@RequestParam("productDesc")String productDesc,@RequestParam("categoryId")int categoryId,@RequestParam("supplierId")int supplierId,@RequestParam("stock")int stock,@RequestParam("price")int price,@RequestParam("pimage") MultipartFile fileImage,Model m)
	{
		Product p1=new Product();
		Product product=productDAO.getProduct(productId);
		product.setProductName(productName);
		product.setProductDesc(productDesc);
		product.setCategoryId(categoryId);
		product.setSupplierId(supplierId);
		product.setStock(stock);
		product.setPrice(price);
		product.setPimage(fileImage);
		
		
		productDAO.updateProduct(product);
		
		
		String path="/Users/harishhardy/git/E-comm/BlueChipFrontend/src/main/webapp/resources/images/";
		
		path=path+String.valueOf(product.getProductId())+".jpg";
		
		File image=new File(path);
		
		if(!fileImage.isEmpty())
		{
			try
			{
				byte[] buffer=fileImage.getBytes();
				FileOutputStream fos=new FileOutputStream(image);
				BufferedOutputStream bos=new BufferedOutputStream(fos);
				bos.write(buffer);;
				bos.close();
				
 			}
			catch(Exception e)
			{
				m.addAttribute("ErrorInfo", e.getMessage());
			}
			
		}
		else
		{
			m.addAttribute("ErrorInfo", "Problem Occured");
		}
		
		
		
		List<Product>productList=productDAO.listProduct();
		m.addAttribute("productList",productList);
		m.addAttribute("product",p1);
		
		return "Product"; 
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value="/totalproductdisplay/{productId}")
	public String totalProductDisplay(@PathVariable("productId")int productId,Model m)
	{
		
		Product product=productDAO.getProduct(productId);
		m.addAttribute("product", product);
		return "TotalProductDisplay";
	}
	
	
}
