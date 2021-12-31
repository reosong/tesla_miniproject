<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <jsp:useBean id="data" class ="tesla.Write" scope="page"/>
    <jsp:setProperty name = "data" property ="title"/>
    <jsp:setProperty name = "data" property ="content"/>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




    <script type="text/JavaScript" src="http://code.jquery.com/jquery-1.7.min.js"></script>
    <script type="text/JavaScript">
   
        function self_introduction($name) {
            jQuery('#nic_name').val($name);
            
        }
    </script>

<form action="test2.jsp" method="post" scope="page">

   <input type = "hidden" id = "nic_name" value = "<?= $_GET['name'] ?>" />

    <input type = "text" id = "name_text" value = ""/>
    

    <input type = "button" onClick = "self_introduction(this.value)" value = "Click" />


<input type ="submit">
</form>
	



</body>
</html>