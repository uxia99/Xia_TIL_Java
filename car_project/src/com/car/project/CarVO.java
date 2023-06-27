package com.car.project;

public class CarVO {
		
	private String vin;
	private String model;
	private String brand;
	private String year;
		
	public String getVin() {
		return vin;
	}
	public void setVin(String vin) {
		this.vin = vin;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
		
	@Override
	public String toString() {
		return "CarVO [vin=" + vin + ", model=" + model + ", brand=" + brand + ", year=" + year + "]";
	}
		
}

