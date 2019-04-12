package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CategoryDAO;
import com.ecomm.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/category")
	public String showCategory(Model m)
	{
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("title", "Category");
		m.addAttribute("listCategories",categoryList);
		return "Category";
	}
	
	@RequestMapping(value="/addcategory",method=RequestMethod.POST)
	public String addCategory(@RequestParam("catName")String catName,@RequestParam("catDesc")String catDesc,Model m)
	{
		Category category=new Category();
		category.setCategoryName(catName);
		category.setCategoryDesc(catDesc);
		
		categoryDAO.addCategory(category);
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("listCategories",categoryList);
		m.addAttribute("title", "Category");
		return "Category";
	}
	
	@RequestMapping(value="/deleteCategory/(categoruID)")
	public String deleteCategory(@PathVariable("categoryID")int categoryId,Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
		categoryDAO.deleteCategory(category);
		
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("listCategories",categoryList);
		m.addAttribute("title", "Category");
		
		return "Category";
	}
	
	@RequestMapping(value="/editCategory/(categoruID)")
	public String editCategory(@PathVariable("categoryID")int categoryId,Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
		
		List<Category>categoryList=categoryDAO.listCategory();
		m.addAttribute("category",category);
		m.addAttribute("title", "Category");
		
		return "UpdateCategory";
	}
	
	
}
