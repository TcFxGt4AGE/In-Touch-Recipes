
<nav class="navbar navbar-default navbar-custom navbar-fixed-top">
	<div class="container-fluid">
	    <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
				<a class="navbar-brand" href="$AbsoluteBaseURL">In ToUcH ReCiPeS</a>
        </div>
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
					<% loop $Menu(1) %>
					<li><a class="$LinkingMode" href="$Link" title="$Title page">$MenuTitle</a></li>
					<% end_loop %>
					<li><a href="admin/">Add Recipe</a><li>
					<% if CurrentMember %> 
					<a href="Security/logout">Logout</a>
					<% else %> 
					<a href="Security/login">Login</a>
					<% end_if %>
				</ul>
		</div>
	</div>
</nav>
