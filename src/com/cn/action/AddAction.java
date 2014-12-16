package com.cn.action;

import com.cn.bean.StudentBean;

import dao.Student;

public class AddAction {
	private String id;
	private String name;
	private String sex;
	private int age;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Student StuInfo(){
		Student sb = new Student();
		sb.setId(id);
		sb.setAge(age);
		sb.setName(name);
		sb.setSex(sex);
		return sb;
	}
	public String execute(){
		StudentBean sb = new StudentBean();
		if(sb.saveInfo(StuInfo())){
			return "success";
		}else{
			return "input";
		}
	}
}
