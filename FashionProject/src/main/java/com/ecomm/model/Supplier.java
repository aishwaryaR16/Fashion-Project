package com.ecomm.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Table
@Entity
public class Supplier 

{
@Id
int supplierId;
String supplierName;
String supplierDesc;
public int getSupplierId() {
	return supplierId;
}
public void setSupplierId(int supplierId) {
	this.supplierId = supplierId;
}
public String getSupplierName() {
	return supplierName;
}
public void setSupplierName(String supplierName) {
	this.supplierName = supplierName;
}
public String getSupplierDesc() {
	return supplierDesc;
}
public void setSupplierDesc(String supplierDesc) {
	this.supplierDesc = supplierDesc;
}
public List<Supplier> retrieveSupplier() {
	// TODO Auto-generated method stub
	return null;
}


}
