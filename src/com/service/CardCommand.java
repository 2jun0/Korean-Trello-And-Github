package com.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CardDAO;
import com.dto.CardDTO;

public class CardCommand implements Command {

	@Override
	public CommandForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int cardnum = Integer.parseInt(request.getParameter("cardnum"));
		
		CardDTO dto = CardDAO.getInstance().retrieve(cardnum);
		request.setAttribute("cardDTO", dto);
		
		CommandForward forward = new CommandForward();
		forward.setRedirect(false);
		forward.setNextPath("card.do?cardnum="+cardnum);
		return forward;
	}

}
