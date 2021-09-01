package com.dg.s1.bankbook;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BankbookService {
	
	@Autowired
	private BankbookDAO bankbookDAO;
	
	public ArrayList<BankbookDTO> getlist() {
		return bankbookDAO.getList();
	}
	

}
