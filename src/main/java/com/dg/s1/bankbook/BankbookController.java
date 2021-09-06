package com.dg.s1.bankbook;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dg.s1.util.Pager;

@Controller
@RequestMapping("/bankbook/*")
public class BankbookController {
	
	@Autowired
	private BankbookService bankbookService;
	
	
	@RequestMapping("bankbookList")
	public ModelAndView list(ModelAndView mv, Pager pager) {
		
		List<BankbookDTO> ar = bankbookService.getList(pager);
		mv.addObject("pager", pager);
		mv.addObject("list", ar);
		mv.setViewName("bankbook/bankbookList");
		return mv;
	}
	
	@RequestMapping("bankbookSelect")
	public void select(BankbookDTO bankbookDTO, Model model) {
		bankbookDTO = bankbookService.getSelect(bankbookDTO);
		model.addAttribute("dtov", bankbookDTO);
	}
	
	@RequestMapping(value="bankbookInsert", method=RequestMethod.GET)
	public void insert() {
		
	}
	
	@RequestMapping(value="bankbookInsert", method=RequestMethod.POST)
	public String insert(BankbookDTO bankbookDTO) {
		int result = bankbookService.setInsert(bankbookDTO);
		
		return "redirect:./bankbookList";
	}
	
	@RequestMapping("bankbookDelete")
	public String delete(Long bookNumber) {
		int result = bankbookService.setDelete(bookNumber);
		
		return "redirect:./bankbookList";
	}
	
	@RequestMapping(value="bankbookUpdate", method=RequestMethod.GET)
	public ModelAndView update(BankbookDTO bankbookDTO) {
		bankbookDTO = bankbookService.getSelect(bankbookDTO);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("bankbook/bankbookUpdate");
		mv.addObject("dtov", bankbookDTO);
		return mv;
	}	
	
	@RequestMapping(value="bankbookUpdate", method= RequestMethod.POST)
	public ModelAndView update(BankbookDTO bankbookDTO, ModelAndView mv) {
		int result = bankbookService.setUpdate(bankbookDTO);
		mv.setViewName("redirect:./bankbookList");
		return mv;
		
	}

}
