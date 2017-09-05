package com.lh.springmvc_crud.entities;

public class Department {
	private int id;
	private String departmentName;
	
	
	public Department(int id, String departmentName) {
		super();
		this.id = id;
		this.departmentName = departmentName;
	}
	
	public Department() {
		super();
		// TODO Auto-generated constructor stub
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDepartmentName() {
		return departmentName;
	}
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}
	
}
