<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head id="Head1" runat="server">
    <title>Training System</title>
</head>
<body>
    <form id="form1" runat="server">
    
    <meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
    <style type="text/css">
        .style1
        {
            font-family: Verdana;
            font-size: xx-large;
            color: #FFFFFF;
        }
        .button1:hover
        {
             background-color:Black;
              color:White;
            }
        .style2
        {
            color: #FF9900;
        }
        </style>


	
	<div class="limiter">
		<div class="container-login100" >
			<div class="wrap-login100">
				<form id="Form2" class="login100-form validate-form"  >
					
                    <div align="center" class="style1">
                          LOGIN</div>
                    <br />
			
                    <div class="wrap-input100 validate-input" data-validate="Enter userid">
                     <asp:TextBox ID="txt_userid" runat="server" class="input100" placeholder="Username"></asp:TextBox>
						
						<span class="focus-input100" data-placeholder="&#xf207;"></span>
					</div>
                    
					<div class="wrap-input100 validate-input" data-validate="Enter password">
                     <asp:TextBox ID="txt_pwd" runat="server" class="input100" type="password" name="pass" placeholder="Password"></asp:TextBox>
						
						<span class="focus-input100" data-placeholder="&#xf191;"></span>
					</div>

				
                    <div class="container-login100-form-btn">
						
						  <asp:Button ID="btn_login_submit"  class="button1" runat="server" BackColor="White" 
                        Font-Bold="True" Font-Names="Verdana" Font-Size="Large" ForeColor="#666666"   
                        Height="50px" Text=" Login"    
                        
                        style = "border-top-left-radius: 10px 10px; border-top-right-radius: 10px 10px; border-bottom-left-radius: 10px 10px; border-bottom-right-radius: 10px 10px;" 
                        BorderStyle="None" ToolTip="Please Click Here" Width="150px" 
                              onclick="btn_login_submit_Click" />
							
					</div>
                    
					<div class="text-center">

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
                            SelectCommand="SELECT * FROM &quot;TRAINING_SYSTEM_LOGIN&quot;">
                        </asp:SqlDataSource>
					
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1">
       
    </div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</form>
</body>
</html>
