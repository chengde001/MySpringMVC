package com.myspringmvc.app.form;

import lombok.Data;

@Data
public class EmployeeListForm {
    private String name;
    private Integer age;
    private String memo;
}