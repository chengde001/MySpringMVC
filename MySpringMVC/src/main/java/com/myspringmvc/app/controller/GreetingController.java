package com.myspringmvc.app.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myspringmvc.app.form.CheckForm;
import com.myspringmvc.app.form.Greeting;
import com.myspringmvc.app.form.TestForm;

@Controller
public class GreetingController {
	
    @RequestMapping(value = "/sample/check/disp/", method = RequestMethod.GET)
    public String disp(Model model) {
        model.addAttribute("message", "check�̃T���v��");
        CheckForm form = new CheckForm();
        form.setEmployees(new String[] { "���Y" });
        model.addAttribute("checkForm", form);
        model.addAttribute("checkEmployees", getCheckEmployees());
        return "checkSample";
    }

    @RequestMapping(value = "/sample/check/info/", method = RequestMethod.POST)
    public String getcheckInfo(@ModelAttribute CheckForm form, Model model) {
        String[] checkedEmployee = form.getEmployees();
        StringBuilder builder = new StringBuilder();
        for (String employee : checkedEmployee) {
            builder.append(employee).append(System.lineSeparator());
        }
        model.addAttribute("message", builder);
        model.addAttribute("checkForm", form);
        model.addAttribute("checkEmployees", getCheckEmployees());
        return "checkSample";
    }

    private List<String> getCheckEmployees() {
        List<String> list = new LinkedList<String>();
        list.add("�ꑾ�Y");
        list.add("���Y");
        list.add("�O�Y");
        return list;
    }
	@RequestMapping(value = "/show", method = RequestMethod.GET)
	public String showMessage(Model model) {
	    TestForm form = new TestForm();
	    form.setId(0);
	    form.setName("�����ɖ��O�������Ă�");
	    model.addAttribute("testForm", form);
	    model.addAttribute("message", "FORM�̗��K");
	    return "showMessage";
	}

	@RequestMapping(value = "/show", method = RequestMethod.POST)
	public String getFormInfo(@ModelAttribute TestForm form, Model model) {
	    model.addAttribute("message", "ID : " + form.getId() + " & name : " + form.getName());
	    return "showMessage";
	}
    @RequestMapping(value="/greeting", method=RequestMethod.GET)
    public String greetingForm(Model model) {
        model.addAttribute("greeting", new Greeting());
        return "greeting";
    }

    @RequestMapping(value="/greeting", method=RequestMethod.POST)
    public String greetingSubmit(@ModelAttribute Greeting greeting, Model model) {
        model.addAttribute("greeting", greeting);
        return "result";
    }

}