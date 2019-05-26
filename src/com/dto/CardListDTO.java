package com.dto;


public class CardListDTO {
	private int num;
	private String title;
	private int boardNum;
	private int[] cardNumArray;
	
	public CardListDTO(int num, String title, int boardNum, int[] cardNumArray)
	{
		this.num = num;
		this.title = title;
		this.boardNum = boardNum;
		this.cardNumArray = cardNumArray;
	}
	
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getBoardNum() {
		return boardNum;
	}
	public void setBoardNum(int boardNum) {
		this.boardNum = boardNum;
	}
	public int[] getCardNumArray() {
		return cardNumArray;
	}
	public void setCardNumArray(int[] cardNumArray) {
		this.cardNumArray = cardNumArray;
	}
}
