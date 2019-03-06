<nav class="navbar navbar-default" role="navigation">

    <div class="navbar-header">
    
   
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

        <div class="col-sm-3 col-md-3 pull-center">
            <form class="navbar-form" role="search">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search" name="q">
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="glyphicon glyphicon-search"></i></button>
                    </div>
                </div>
            </form>
        </div>
        <div class="nav navbar-nav pull-center">
          <ul>
                    <% String name = request.getParameter("username"); %> 
   
              <li class="ab" style="list-style-type:none;"><a href="#"><strong> Welcome   <% out.print(name); %></strong></a></li>
          </ul>
         </div>


         <div>
           <ul class="nav navbar-nav pull-right">
               <form action="servlet2" method="post">
               <button "nav-link btn btn-secondary"
				href="navigator.jsp" role="button" style="border-radius: 20px; width: 150px; margin-top: 10px; background-color: #676767">Logout</button>
             </form>
           </ul>
          </div>


      </div>
</nav>
