
package com.rsa.springboot;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.rsa.model.InputData;

@Controller
public class HelloWorldController {

	@RequestMapping("/helloworld.html")
	public ModelAndView hello(@Valid @ModelAttribute("inputData") InputData inputData, Model model) {
		model.addAttribute("inputData", new InputData());
		String helloWorldMessage = "Hello21312 world from java2blog!";
		return new ModelAndView("hello", "message", helloWorldMessage);
	}

	@RequestMapping(value = "/encrypt", method = RequestMethod.GET)
	public String add(Model model) {
		model.addAttribute("InputData", new InputData());
		return "encrypt";
	}

	@RequestMapping(value = "/encrypt", method = RequestMethod.POST)
	public ModelAndView encrypt(@Valid @ModelAttribute("inputData") InputData inputData, Model model) {
		String inputText = inputData.getInputStr();
		System.out.println("inout--->" + inputText);
		inputData.setEncryptStr("Encrypted string from RSA program");
		model.addAttribute("inputData", new InputData());

		// encrypt.encrypt(inputStr);//Call RsaPublic class and call encrypt method by passing input string
		//And then set the encrypted string into model InputData.
		return new ModelAndView("hello", "inputData", inputData);
	}
	
}
