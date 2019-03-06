<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>

<style>
.ip	{
  			border-radius: 25px;
 			 background-color:  #e2e2e2;
 			 border: none;
 			 color: black;
  			padding: 2px;
  			text-align: left;
 			 text-decoration: none;
  			display: inline-block;
  			font-size: 16px;
 			 margin:2px;
			width: 250px;
 			height: 30px;   
	}
.act	{
  			border-radius: 25px;
 			 background-color:  #e2e2e2;
 			 border: none;
 			 color: gray;
  			padding: 2px;
  			text-align: left;
 			 text-decoration: none;
  			display: inline-block;
  			font-size: 16px;
 			 margin:2px;
			width: 150px;
 			height: 30px;   
}
.add{
  			border-radius: 25px;
 			 background-color:#A9A9A9;
 			 border: none;
 			 color: white;
  			padding: 2px;
  			text-align: center;
 			 text-decoration: none;
  			display: inline-block;
  			font-size: 16px;
 			 margin:2px;
			width: 120px;
 			height: 30px;   
}
button:active{
  					  background:#A9A9A9;
}
	</style>
</head>
<body>
 <div class="btn-group btn-block">
    			 <select  class="act"><option> Choose Action</option>
                                                                	 		<option> Low</option>
                                                                			<option> Medium</option>                                                                      
                                                                			<option> High</option>                                                                
                                                                         </select>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
			<input type="text" placeholder="Product Name/ID..."  class="ip">
                                                                	<select  class="sort ip"><option> Sort by</option>
                                                                			<option> Low</option>
                                                                			<option> Medium</option>                                                                      
                                                                			<option> High</option>                                                                
                                                                         </select>&emsp;&emsp;
                                                                    <a href="addp.html"><input type="submit"  value="Add Product" class="add" class="button"/></a>&emsp;&emsp;
                                                         </div> <br><br>
</body>
</html>