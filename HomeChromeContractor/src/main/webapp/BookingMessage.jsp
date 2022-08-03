<%
	if(session.getAttribute("ContId") == null){
		response.sendRedirect("login.jsp");
}
%>


<%@ include file="Header.jsp" %>  
 
  
<br>
<br>
<br>
<br>
<br>
<br>

<style>
      .button1 {
        background-color: #1c87c9;
        border: none;
        color: white;
        padding: 15px 34px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 20px;
        margin: 4px 2px;
        cursor: pointer;
      }
    </style>

<form action="HiredContractorServlet"  method="post">
<h1 align="center">Congratulations!! You are Being Hired</h1>
<br>
<br>
<br>
<h4 align="center">Your Customer Expect an email reply from You. Lets Hurry Up.Thank you For using our services.</h4>
<br>
<br>
<br>
<h3 align="center">Thank You!</h3>
<br>
<br>
<br>
<div align="center"><a href="index.jsp" class="button1">Back To HomePage</a></div>


</form>
</body>
</html>