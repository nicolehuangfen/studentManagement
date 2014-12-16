package com.cn.action;

import com.cn.bean.StudentBean;

public class DeleteAction {
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	public String execute(){
		StudentBean sb = new StudentBean();
		if(sb.deleteInfo(this.getId())){
			return "success";
		}else{
			return "input";
		}
	}
}
