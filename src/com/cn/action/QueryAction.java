package com.cn.action;

public class QueryAction {
	private String inputName;

	public String getInputName() {
		return inputName;
	}

	public void setInputName(String inputName) {
		this.inputName = inputName;
	}

	public String execute(){
		return "success";
	}
}
