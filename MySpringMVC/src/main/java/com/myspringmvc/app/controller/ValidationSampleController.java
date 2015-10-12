package com.myspringmvc.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myspringmvc.app.dto.EmployeeDto;
import com.myspringmvc.app.form.EmployeeListForm;

@Controller
public class ValidationSampleController {

    private List<EmployeeDto> employeeList = new ArrayList<EmployeeDto>();

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(Model model) {
        model.addAttribute("title", "�Ј��ꗗ");
        model.addAttribute("message", "�o�^�Ј��ꗗ����\�����܂�");
        EmployeeListForm form = new EmployeeListForm();
        model.addAttribute("employeeListForm", form);
        model.addAttribute("employeeList", employeeList);
        return "list";
    }

    @RequestMapping(value = "/list", method = RequestMethod.POST)
    public String list(@Valid @ModelAttribute EmployeeListForm form, BindingResult result, Model model) {
    	
    	if(result.hasErrors()){
            model.addAttribute("title", "�G���[");
            model.addAttribute("message", "�ȉ��̃G���[���������Ă�������");
    	} else {
        	EmployeeDto dto = new EmployeeDto();
            BeanUtils.copyProperties(form, dto);
            employeeList.add(dto);
            model.addAttribute("title", "�Ј��ꗗ");
            model.addAttribute("message", form.getName() + "��o�^���܂����B");
            model.addAttribute("employeeListForm", new EmployeeListForm());
    	}

        model.addAttribute("employeeList", employeeList);
        return "list";
    }
}
