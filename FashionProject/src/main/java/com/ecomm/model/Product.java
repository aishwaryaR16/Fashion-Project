package com.ecomm.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Table
@Entity
public class Product
{
	@Id
int productId;
String productdesc;
String productName;

public int getProductId() {
	return productId;
}
public void setProductId(int productId) {
	this.productId = productId;
}
public String getProductdesc() {
	return productdesc;
}
public void setProductdesc(String productdesc) {
	this.productdesc = productdesc;
}
public String getProductName() {
	return productName;
}
public void setProductName(String productName) {
	this.productName = productName;
}
public String toString()
{
	return "Product ID:"+productId+" Product Name:"+productName+" Product Desc"+productdesc;
}
public List<Product> retrieveProduct() {
	// TODO Auto-generated method stub
	return null;
}


}
