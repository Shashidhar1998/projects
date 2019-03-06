<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project?useSSL=false";
String userid = "root";
String password = "password-1";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
.btn {
	border-radius: 20px;
	width:auto;
	background-color: #F2F2F2;
}
input {
	
}

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
.sort{
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
			width: 120px;
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
<script>
</script>
</head>
<body >
	<div class="container-fluid" style="margin-left:-50px;">

	
		
		
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
                                                                    <a href="navigator.jsp"><input type="submit"  value="Add Product"  class="add" class="button"/></a>&emsp;&emsp;
                                                         </div> <br><br>
		
		<br>
		<table class="table table-hover table-bordered table-stripped" style="border:6px solid black;border-style:hidden" rules="cols">
			<thead>
				<tr style="color:#d3d3d3">
					<th scope="col">Product List</th>
					<th scope="col">Brand</th>
					<th scope="col">Category</th>
					<th scope="col">Rating</th>
					<th scope="col">Price</th>
					<th >Options</th>
				</tr>
			</thead>
			 
			<tbody>
				<tr>
				<%
                     try{
                         connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                          statement=connection.createStatement();
                          String sql ="select * from addproduct";
                          resultSet = statement.executeQuery(sql);
                           while(resultSet.next()){
                        	       	  
              %>
					<td scope="col"><%=resultSet.getString("Name") %></td>
					<td scope="col"><%=resultSet.getString("Brand") %></td>
					<td scope="col"><%=resultSet.getString("Category") %></td>
					<td scope="col">5</td>
					<td scope="col"><%=resultSet.getString("Price") %></td>
					
					<td>
	                          <a href="viewproduct.jsp?name=<%=resultSet.getString("Name") %>&brand=<%=resultSet.getString("Brand") %>&desc=<%=resultSet.getString("Description") %>&price=<%=resultSet.getString("Price") %>" method="get"><button class="btn"  input type="submit" >view</button></a>
	                          <button class="btn" >Block</button>
	                          <button class="btn" >Remove</button>
	                </td>          				
					
				</tr>
				<%
                      }
                        connection.close();
                          } catch (Exception e) {
                                e.printStackTrace();
                                               }
                %>
                
                
			</tbody>
			
		</table>
	</div>

</body>
</html>










	