<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="../img/favicon.ico" />  <title>주문하기</title>
    <link rel="stylesheet" href="../css/costomer.css">
    <link rel = "stylesheet" href="../css/bootstrap.css">
    <script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../css/click.js"></script>
    
</head>
<body>
 
        <nav id="menu">

            <div id="logo"><a href="../index.jsp"> T E S L A</a></div>

           

        </nav>
       


       



        <div class="jumbotron">
            <div class="container">
                <form action="writeAction.jsp" method="post" class="form-horizontal">
                    <div class="form-group">
                        <label for="inputEmail3" class="col-sm-2 control-label">제목</label>
                        <div class="col-sm-10">
                            <input type="text" name="title" class="form-control" id="input">
                        </div>
                    </div>
                    <label for="" class="col-sm-2 control-label"> 게시글</label>
                    <div class="col-sm-offset-2 col-sm-10">
                    <textarea name="content" class="form-control"  rows="10"></textarea>
                
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <button type="submit" class="btn btn-default">작성완료</button>
            </div>
        </div>
        </form>
        </div>
    </div>
        

  
   
   
       
    
        













   
</body>
