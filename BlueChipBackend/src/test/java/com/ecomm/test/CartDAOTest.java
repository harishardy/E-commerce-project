package com.ecomm.test;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.CartDAO;
import com.ecomm.model.Cart;

public class CartDAOTest
{
static CartDAO cartDao;
@BeforeClass

public static void executefirst()
{
	AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	context.scan("com.ecomm");
	context.refresh();
	cartDao=(CartDAO)context.getBean("cartDao");
	
}

	@Test
	public void addCarttest()
	{
		Cart  cartItem=new Cart();
	cartItem.setProductid(7);
	cartItem.setProductname("Intel");
	cartItem.setPrice(50000);
	cartItem.setQuantity(5);
	cartItem.setProductstatus("N");
	cartItem.setUsername("harish");

		assertTrue("the problem is with cart Insertion:", cartDao.addCartItem(cartItem));
	}

	public void listCartitems()
	{
		List<Cart> CartItemlist=cartDao.listCartItems("siddhu");
		assertTrue("the problem is with  CartItemlist :", CartItemlist.size()>0);
		for(Cart cart:CartItemlist)
		{
			System.out.println(cart.getCartitemid()+":::");
			System.out.println(cart.getProductname()+":::");
			System.out.println(cart.getQuantity()+":::");
		}
	}
}