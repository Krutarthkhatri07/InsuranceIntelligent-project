<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body id="body">
	<select onchange="fun()" id="country">
		<option selected hidden>Select_Country</option> 
		<option>IND</option>
		<option>CANADA</option>
		<option>USA</option>
	</select>
	<select id="state">
		 <option selected hidden>Select_State</option>
	</select>
	<script type="text/javascript">
	function fun()
	{
		var htp = new XMLHttpRequest();
	
		/*
		There are five readyState of AJAX
			
			0=request not initialized
			1=request initialized
			2=process
			3=send
			4=response
			
		 */
		
 		htp.onreadystatechange = function() {
			
			 if (htp.readyState == 4) {
				
				var body = document.getElementById("body");
				var country = document.getElementById("country");
				var state = document.getElementById("state");   ////state.innetHTML = " ";
				body.removeChild(state);
				var newstate = document.createElement("select");  
				body.appendChild(newstate);
				newstate.id = "state";
				var defaul = document.createElement("option");
				defaul.selected = true;
				defaul.hidden = true;
				state.appendChild(defaul);
				
				/* var child = state.lastElementChild;
				while(child)
				{
					state.removeChild(child);
					child = state.lastElementChild;
				}
				 */var json = JSON.parse(htp.responseText);		
				for(var i=0;i<json.length;i++)
				{
					var data = json[i];
					var option = document.createElement("option");
					var cname = country.value;
					var n = data.Country;
					console.log(cname+n);
					
					if(cname.localeCompare(n) == 0)
					{					
						option.text = data.state;
						option.value = data.state;
						newstate.appendChild(option);
					}
				}
			}
		} 
		var country = document.getElementById("country");
		htp.open("get", "json.jsp" , true);
		htp.send();
		
		
	}
</script>

</body>
</html>