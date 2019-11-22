package com.Test.myWebApp_Test;

import org.springframework.stereotype.Repository;


 
@Repository
public class EmployeeDAO
{
     static Employees list = new Employees();
     
    static
    {
        list.getEmployeeList().add(new Employee(1,"Kris", "dharanidharkrish@gmail.com","Krish"));
        list.getEmployeeList().add(new Employee(2, "Sai", "saitej123@gmail.com","Tej"));
        list.getEmployeeList().add(new Employee(3, "Mani","manikanta123@gmail.com", "kanta"));
        list.getEmployeeList().add(new Employee(4, "Aman", "aman123@gmail.com" ,"Roy"));
    }
     
    public Employees getAllEmployees()
    {
        return list;
    }
     
    public void addEmployee(Employee employee) {
        list.getEmployeeList().add(employee);
    }
}
