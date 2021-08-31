package com.dg.s1.bankbook;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dg.s1.util.DBConnector;

@Controller
@RequestMapping("/bankbook/*")

public class BankbookController {
	
	private BankbookService bankbookService;
	
	public BankbookController() {
		bankbookService = new BankbookService();
	}

	@RequestMapping(value = "bankbookList.do", method = RequestMethod.GET)
	public ModelAndView list(ModelAndView mv) {
		
		ArrayList<BankbookDTO> ar = bankbookService.getList();

		System.out.println("bankbook list");
		
		mv.addObject("list", ar);
		mv.setViewName("bankbook/bankbookList");
		return mv;
	}

	@RequestMapping("bankbookSelect")
	public void select(@RequestParam(defaultValue = "1", value = "n") Integer num, String name, Model model) {

		System.out.println("Value: " + num);
		System.out.println("Name: " + name);
		BankbookDTO bankbookDTO = new BankbookDTO();
		bankbookDTO.setBookName("BookName");
		model.addAttribute("dto", bankbookDTO);
		model.addAttribute("test", "iu");
		// return "bankbook/bankbookSelect";
	}

	@RequestMapping("bankbookInsert.do")
	public String insert(BankbookDTO bankbookDTO) {
		System.out.println(bankbookDTO.getBookName());
		System.out.println("insert");
		return "redirect:../";
	}

}
