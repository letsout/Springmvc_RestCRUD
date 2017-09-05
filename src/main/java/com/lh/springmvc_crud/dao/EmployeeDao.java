package com.lh.springmvc_crud.dao;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lh.springmvc_crud.entities.Department;
import com.lh.springmvc_crud.entities.Employee;

@Repository
public class EmployeeDao {
	public static Map<Integer,Employee> employees=null;
	
	@Autowired
	private DepartmentDao departmentdao;
	static {
		employees = new HashMap<Integer,Employee>();
		
		employees.put(1001,new Employee(1001,"E-AA","AA@163.com","1",new Department(101,"D-AA")));
		employees.put(1002,new Employee(1002,"E-AA","AA@163.com","1",new Department(102,"D-BB")));
		employees.put(1003,new Employee(1003,"E-AA","AA@163.com","0",new Department(103,"D-CC")));
		employees.put(1004,new Employee(1004,"E-AA","AA@163.com","0",new Department(104,"D-DD")));
		employees.put(1005,new Employee(1005,"E-AA","AA@163.com","1",new Department(105,"D-EE")));
	}
	private static Integer initid=1006;
	
	public void save(Employee employee) {
		if(employee.getId() == null) {
			employee.setId(initid++);
		}
		employee.setDepartment(departmentdao.getDepartment(employee.getDepartment().getId()));
		employees.put(employee.getId(), employee);
	}
	public Collection<Employee> getAll(){
		return employees.values();
	}
	public Employee get(Integer id) {
		return employees.get(id);
	}
	public Employee delete(Integer id) {
		return employees.remove(id);
	}
	@Override
	public String toString() {
		return "EmployeeDao [departmentdao=" + departmentdao + ", getAll()=" + getAll() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
}

