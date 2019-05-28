package com.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.CardDAO;

public class AddCardCommand implements Command {

	@Override
	public CommandForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		
		int boardnum = Integer.parseInt(request.getParameter("boardnum"));
		int cardListNum = Integer.parseInt(request.getParameter("things"));
		
		//CardDAO.getInstance().insert(cardListNum);
		
		CommandForward forward = new CommandForward();
		forward.setRedirect(false);
		forward.setNextPath("cardListBoard.do?boardnum="+boardnum);
		return forward;
	}

}
