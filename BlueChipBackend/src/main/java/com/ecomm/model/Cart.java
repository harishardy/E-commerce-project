package com.ecomm.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Cart 
{
@Id 
@GeneratedValue
int cartitemid;
int orderid;
int productid;
String productname;
int quantity;
int price;
String username;
String productstatus;
public int getCartitemid() {
	return cartitemid;
}
public void setCartitemid(int cartitemid) {
	this.cartitemid = cartitemid;
}
public int getOrderid() {
	return orderid;
}
public void setOrderid(int orderid) {
	this.orderid = orderid;
}
public int getProductid() {
	return productid;
}
public void setProductid(int productid) {
	this.productid = productid;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getProductstatus() {
	return productstatus;
}
public void setProductstatus(String productstatus) {
	this.productstatus = productstatus;
}

}