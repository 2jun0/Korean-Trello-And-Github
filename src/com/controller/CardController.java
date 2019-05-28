package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.AddCardListCommand;
import com.service.CardListBoardCommand;
import com.service.Command;
import com.service.CommandForward;
import com.service.DeleteCardListCommand;

// cardListTitle : 카드리스트 이름
// cardDTO

@WebServlet({"/card.do", "/addCard.do", "/addCardCommand.do", "/deleteCardCommand.do", "/modifyCardCommand.do"})
public class CardController extends HttpServlet {
	private static final long serialVersionUID = 5477672255570826308L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess( request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess( request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
	    
		String requestURI = request.getRequestURI();
	    String contextPath = request.getContextPath();
	    String com = requestURI.substring(contextPath.length());
	    
	    CommandForward forward = null;
	    Command command = null;
	    
	    // 카드 뵤여주기
	    if(com.equals("/card.do")) {
	    	command = new CardListBoardCommand();
	    	forward = command.execute(request, response);
	    }
	    // 카드 추가하기
	    else if(com.equals("/addCard.do")) {
	    	forward = new CommandForward();
			forward.setRedirect(true);
			forward.setNextPath("cardAddForm.jsp");
	    }
	    // 카드 수정하기
	    else if(com.equals("/modifyCard.do")) {
	    	// dto값 얻으려고 하는것임.
	    	command = new CardListBoardCommand();
	    	command.execute(request, response);
	    	
	    	forward = new CommandForward();
			forward.setRedirect(true);
			forward.setNextPath("cardModifyForm.jsp");
	    }
	    // 카드 추가 처리
	    else if(com.equals("/addCardCommand.do")) {
	    	//forward = new CommandForward();
	    	//command = new AddCardListCommand();
	    	//forward = command.execute(request, response);
	    }
	    // 카드 삭제 처리
	    else if(com.equals("/deleteCardCommand.do")) {
	    	//command = new DeleteCardListCommand();
	    	forward = command.execute(request, response);
	    }
	    // 카드 수정 처리
	    else if(com.equals("/modifyCardCommand.do")) {
	    	//command = new AddCardCommand();
	    	//forward = command.execute(request, response);
	    }
	    
	    if(forward != null) {
	    	if(forward.isRedirect()) {
	    		response.sendRedirect(forward.getNextPath());
	    	} else {
	    		RequestDispatcher dis = request.getRequestDispatcher(forward.getNextPath());
			    dis.forward(request, response);
	    	}
	    }
	}
}
