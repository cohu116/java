package com.javalec.spring_pjt_board.command;

import org.springframework.ui.Model;

public class MLoginCommand implements BCommand {

	@Override
	public void execute(Model model) {
		// TODO Auto-generated method stub

		model.addAttribute("login");
	}

}
