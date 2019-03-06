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
</head>
<body >
<table class="table table-hover table-bordered table-stripped" style="border:6px solid black;border-style:hidden" rules="cols">
			<thead>
				<tr style="color:#d3d3d3">
					<th scope="col">Product List</th>
					<th scope="col">ID</th>
					<th scope="col">In Stock</th>
					<th scope="col">Req</th>
					<th scope="col">Buffer</th>
					<th scope="col">Price/Item</th>
					<th scope="col">Pending</th>
					<th scope="col">Rating</th>									
					<th >Options</th>
				</tr>
			</thead>
			 
			<tbody>
				<tr>
				<%
                     try{
                         connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                          statement=connection.createStatement();
                          String sql =" select  addproduct.Name as Products_List, addproduct.Id  , vendor.InStock, vendor.required , vendor.buffer ,addproduct.Price ,vendor.pending ,vendor.rating from addproduct inner join vendor on addproduct.Id = vendor.Id; ";
                          resultSet = statement.executeQuery(sql);
                           while(resultSet.next()){
                        	       	  
              %>
					<td scope="col"><%=resultSet.getString("Products_List") %></td>
					<td scope="col"><%=resultSet.getString("addproduct.Id") %></td>
					<td scope="col"><%=resultSet.getString("vendor.InStock") %></td>
					<td scope="col"><%=resultSet.getString("vendor.required") %></td>
					<td scope="col"><%=resultSet.getString("vendor.buffer") %></td>
					<td scope="col"><%=resultSet.getString("addproduct.Price") %></td>
					<td scope="col"><%=resultSet.getString("vendor.pending") %></td>
					<td scope="col"><%=resultSet.getString("vendor.rating") %></td>
					
					<td>
					
					 <div class="container">
 
  
  <button class="btn btn-primary"  type="button" data-toggle="modal" data-target="#myModal">Manage</button></a>

  <!-- The Modal -->
  <div class="modal" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
      
        <!-- Modal Header -->
        <div class="modal-header">
          <h4 class="modal-title">Enter the stock</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
        
        <!-- Modal body -->
        <div class="modal-body">
         <form action="/action_page.php">
            <div class="form-group" style="width:50%">
               <input type="text" class="form-control form-control-sm" placeholder="Small form control" name=""><br>
              <button type="submit"  class="btn " >Submit</button>
            </div>
            </form>
        </div>
        
   
        
      </div>
    </div>
  </div>
  
</div>			
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
	
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

</body>
</html>

