<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>null</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style type="text/css">
	
		.card-list-board-contrainer{
			display: inline-block;
			white-space:nowrap;
			overflow-x:auto;
			overflow-y:hidden;
			height: 100%;
			margin-left: 4px;
			margin-right: 4px;
		}
		
		.card-list-wrapper{
			display: inline-block;
			box-sizing: border-box;
			height: 100%;
		}

		.card-list-container{
			background-color: #dfe1e6;
		    border-radius: 3px;
		    box-sizing: border-box;
		    display: flex;
		    flex-direction: column;
		    max-height: 100%;
		    width: 300px;
		    position: relative;
		    white-space: normal;
		    margin-top: 10px;
		    margin-bottom: 10px;
		    margin-left: 4px;
		    margin-right: 4px;
		    padding-top: 8px;
		    padding-left: 8px;
		    padding-right: 8px;
		}
		
		.card-list-header-container{
			margin-bottom: 5px;
			width: 100%;
			display: flex;
			flex-direction: row-reverse;
		}
		
		.card-list-header-name{
			display: inline-block;
			width: 100%;
			font-weight: bold;
		    font-size: 18px;
		    margin-top: 5px;
		    margin-left: 10px;
		}
		
		.card-list-header-extra{
			background: transparent;
			border-radius: 3px;
			border: none;
			height:30px;
   			width:30px;
   			text-align: center;
		}
		
		.card-list-header-extra:hover{
			background-color: rgba(9,30,66,.13);
		}
		
		.card-list-header-extra:hover .material-icons.delete-icon{
			color: #172b4d;
		}
		
		.material-icons.delete-icon
		{
		 	color: #6b778c;
		 	position: relative;
			top: 2px;
		    right: 2.6px;
		}
		
		.card-list-content-container{
			flex: 1 1 auto;
		    margin-bottom: 0;
		    overflow-y: auto;
		    overflow-x: hidden;
		    padding: 0 4px;
		}
		
		.card-content-container{
			padding: 6px 8px 2px;
			background-color: #fff;
			border-radius: 3px;
			box-shadow: 0 1px 0 rgba(9,30,66,.25);
			cursor: pointer;
			display: block;
			margin-bottom: 8px;
			max-width: 300px;
			min-height: 20px;
			position: relative;
			text-decoration: none;
		}
		
		.card-content-container:hover{
			background-color:rgb(244,245,247);
		}
		
		.card-title{
			clear: both;
		    display: block;
		    margin: 0 0 4px;
		    text-decoration: none;
		    word-wrap: break-word;
		    color: #172b4d;
		}
		
		.add-card-container{
			display: flex;
			flex-direction: row;
			box-sizing: border-box;
			flex: 0 0 auto;
			padding: 8px;
			color: #6b778c;
			cursor: pointer;
			font-size: 14px;
    		line-height: 15px;
    		font-weight: 200;
    		margin-left: -8px;
		    margin-right: -8px;
		}
		
		.add-card-container:hover{
			color: #172b4d;
			background-color: rgba(9,30,66,.13);
		}
		
		.add-card-container:hober .material-icons.add-icon{
			color: #6b778c;
		}
		
		.add-card-text{
			display: inline-block;
			margin-top: 5.7px;
			margin-left: 1ps;
		}
		
		.add-card-list-container{
			background-color: rgba(0,0,0,.12);
			display: flex;
			border-radius: 3px;
			flex-direction: row;
			box-sizing: border-box;
			flex: 0 0 auto;
			padding: 6px;
			cursor: pointer;
    		font-weight: 200;
    		width: 300px;
    		margin-left: 4px;
    		margin-right: 4px;
    		margin-top: 10px;
		}
		
		.add-card-list-container:hover{
			background-color: rgba(9,30,66,.25);
		}
		
		.material-icons.add-icon.add-card-list{
			color: hsla(0,0%,100%,.8);
			margin-left: 10px;
			margin-top: 5px;
		}
		
		.add-card-list-text{
			display: inline-block;
			font-weight: bold;
		    font-size: 18px;
		    margin-top: 4px;
		    margin-left: 5px;
		    color: hsla(0,0%,100%,.8);
		}
		
    </style>

</head>
<body style="background-color: rgb(0, 121, 191);">

<div class="card-list-board-contrainer">
	<div class="card-list-wrapper">
		<div class="card-list-container">
	  		<div class="card-list-header-container">
		  		<button class="card-list-header-extra"> <i class="material-icons delete-icon">delete</i> </button>
	  			<h2 class="card-list-header-name">테스트 카드 리스트</h2>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 1 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드  2입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 3 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 4 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 5 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 6 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 7 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 8 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="card-list-content-container">
	 			<div class="card-content-container">
	 				<span class="card-title">카드 9 입니다.</span>
	 			</div>
	 		</div>
	 		
	 		<div class="add-card-container">
				<i class="material-icons add-icon">add</i>
				<span class="add-card-text">카드 추가하기</span>
			</div>
	  	</div>
	</div>
  
	<div class="card-list-wrapper">
		<div class="card-list-container">
	  		<div class="card-list-header-container">
		  		<button class="card-list-header-extra"> <i class="material-icons delete-icon">delete</i> </button>
	  			<h2 class="card-list-header-name">테스트 카드 리스트</h2>
	 		</div>
	 		
	 		<div class="add-card-container">
				<i class="material-icons add-icon">add</i>
				<span class="add-card-text">카드 추가하기</span>
			</div>
	  	</div>
  	</div>
	  	
  	<div class="card-list-wrapper">
		<div class="card-list-container">
	  		<div class="card-list-header-container">
		  		<button class="card-list-header-extra"> <i class="material-icons delete-icon">delete</i> </button>
	  			<h2 class="card-list-header-name">테스트 카드 리스트</h2>
	 		</div>
	 		
	 		<div class="add-card-container">
				<i class="material-icons add-icon">add</i>
				<span class="add-card-text">카드 추가하기</span>
			</div>
	  	</div>
	</div>
	
	<div class="card-list-wrapper">
	  	<div class="card-list-container">
	  		<div class="card-list-header-container">
		  		<button class="card-list-header-extra"> <i class="material-icons delete-icon">delete</i> </button>
	  			<h2 class="card-list-header-name">테스트 카드 리스트</h2>
	 		</div>
	 		
	 		<div class="add-card-container">
				<i class="material-icons add-icon">add</i>
				<span class="add-card-text">카드 추가하기</span>
			</div>
	  	</div>
	</div>
	
	<div class="card-list-wrapper">
		<div class="add-card-list-container">
			<i class="material-icons add-icon add-card-list">add</i>
			<span class="add-card-list-text">카드 리스트 추가하기</span>
		</div>
	</div>
</div>

</body>
</html>