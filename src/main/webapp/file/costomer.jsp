<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="tesla.WriteDao"%>
     <%@ page import="tesla.Write"%>
     <%@ page import ="java.sql.*" %>
    <%@ page import ="java.util.*" %>
    <jsp:useBean id="data" class="tesla.Write"/>
    <jsp:setProperty name ="data" property ="page"/>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>Electric Cars</title>
  <link rel="icon" type="image/x-icon" href="../img/favicon.ico" />
    <link rel="stylesheet" href="../css/costomer.css">
    <link rel = "stylesheet" href="../css/bootstrap.css">
    <script src ="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="../js/bootstrap.js"></script>
    <script src="../css/click.js"></script>
    
</head>
<body>
    <header>
        <nav id="menu">

            <div id="logo"><a href="../index.jsp"> T E S L A</a></div>

           

        </nav>
    </header>
   
   
       <div class="jumbotron" style="padding-top:10%;">
           <div class="container">
               <table class="table table-striped">
                   <thead>
                       <tr>
                           <th>번호</th>
                           <th>게시글 제목</th>
                           <th>작성자</th>
                           <th>작성시간 </th>
                       </tr>
                   </thead>
                   
                   
                   
                   <tbody>
                   <% 
                   int a = data.getPage();
                   WriteDao writeDao= new WriteDao();
                   ArrayList<Write> write = writeDao.showPage(a);
                   	for(int i =0; i<write.size();i++){
                   	
                   %>
                       <tr>
                           <td><%=write.get(i).getNumber() %></td>
                           <td>
                          <a href= "showContent.jsp?number=<%=write.get(i).getNumber() %>">
                          <%=write.get(i).getTitle() %></a>
                           </td>
                           <td><%=write.get(i).getUserID()%></td>
                           <td><%=write.get(i).getDate() %></td>
                       </tr>
                 <%} %>



                   </tbody>
               </table>
           </div>
       </div>
       
      <div style="width: 100%; text-align: center; ">
      
      
      
        <ul style ="display:inline-block;">
      <%
     
    
      int num = writeDao.page();
      for(int i =1 ; i<=num ; i++){
 
   %>
		
			<li style="list-style: none;"> <%=i %></li>
			
 
    	  <%
      }
      
      %>
       <div style="clear: both;"></div>
      </ul>
 
      
      </div>

       <div class="container">
           <form action="write.jsp" method="post" class="navbar-form navbar-right">
           <button type="sumbit" class="btn btn-success">글쓰기</button>
       </form>
       </div>
 




    
        













    </main>
</body>
