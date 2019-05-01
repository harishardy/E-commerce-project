package com.ecomm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecomm.dao.CartDAO;
import com.ecomm.dao.ProductDAO;
import com.ecomm.model.Cart;
import com.ecomm.model.Product;



@Controller
public class CartController
{
	
@Autowired
CartDAO cartDao;

@Autowired
ProductDAO productDao;

@RequestMapping(value="/addToCart/{productid}")
public String addToCart(@PathVariable("productid")int productid,@RequestParam("quantity")int quantity,Model m)
{
	
	String username="harish";
	
	Product product=productDao.getProduct(productid);
	Cart cartItem=new Cart();
	cartItem.setProductid(product.getProductId());
	cartItem.setProductname(product.getProductName());
	cartItem.setPrice(product.getPrice());
	cartItem.setQuantity(quantity);
	cartItem.setUsername(username);
	cartItem.setProductstatus("NP");
	
	cartDao.addCartItem(cartItem);
	List<Cart>cartItemList=cartDao.listCartItems(username);
	m.addAttribute("cartItemList", cartItemList);
	m.addAttribute("grantTotal", this.getGrandTotal(cartItemList));
	return "Cart";
}

public int getGrandTotal(List<Cart>cartItemList)
{
	
	int grandTotal=0;
	int count=0;
	
while(count<cartItemList.size())
{
	Cart cartItem=cartItemList.get(count);
	grandTotal= grandTotal+(cartItem.getQuantity()*cartItem.getPrice());
	count++;
}
 
return grandTotal;

}
		
}