package com.mar.gold;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class GoldController {
	
	int oro = 0;
	 
	@RequestMapping("/")
    public String index(Model model) {
		model.addAttribute("oro", oro);
        return "index.jsp";
    }
	
	@RequestMapping("/granja")
    public String granja(Model model) {		
		int numero = (int)(Math.random()*(20-10+1)+10);		
		oro += numero; 
		model.addAttribute("oro", oro);
        return "redirect:/";
    }
	
	@RequestMapping("/cueva")
    public String cueva(Model model) {		
		int numero = (int)(Math.random()*(10-5+1)+5);		
		oro += numero; 
		model.addAttribute("oro", oro);
        return "redirect:/";
    }
	
	@RequestMapping("/casa")
    public String casa(Model model) {		
		int numero = (int)(Math.random()*(5-2+1)+2);		
		oro += numero; 
		model.addAttribute("oro", oro);
        return "redirect:/";
    }
	
	@RequestMapping("/casino")
    public String casino(Model model) {		
		int numero = (int)(Math.random()*(50-0+1)+0);		
		oro += numero; 
		model.addAttribute("oro", oro);
        return "redirect:/";
    }
	
}	
