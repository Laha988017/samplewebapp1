package com.subhajit.app;
public class User
{
	private String firstName;
	private String lastName;
	private String loginName;
	private String password;
	private int age;

	public String getFirstName(){return firstName;}
	public void setFirstName(String firstName){this.firstName = firstName;}

	public String getLastName(){return lastName;}
	public void setLastName(String lastName){this.lastName = lastName;}

	public String getLoginName(){return loginName;}
	public void setLoginName(String loginName){this.loginName = loginName;}

	public String getPassword(){return password;}
	public void setPassword(String password){this.password = password;}

	public int getAge(){return age;}
	public void setAge(int age){this.age = age;}
}