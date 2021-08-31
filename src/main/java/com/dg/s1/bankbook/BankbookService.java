package com.dg.s1.bankbook;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dg.s1.util.DBConnector;

public class BankbookService {
	
	public void setBankbookDAO(BankbookDAO bankbookDAO) {
		this.bankbookDAO = bankbookDAO;
	}

	private BankbookDAO bankbookDAO;
	
	public ArrayList<BankbookDTO> getList() {
		ArrayList<BankbookDTO> ar = bankbookDAO.getList();
		return ar;
	}

}
