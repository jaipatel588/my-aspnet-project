<%@ Page Language="C#" AutoEventWireup="true" CodeFile="First_Aid_Request.aspx.cs" Inherits="First_Aid_Request" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">


        .style1
        {
            width: 175px;
        }
        .style2
        {
            width: 175px;
            height: 35px;
        }
        .style3
        {
            height: 35px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
    <div>
    
        <h2>
        <asp:Label ID="Label54" runat="server" Text="FIRST-AID REQUEST" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label55" runat="server" Visible="False"></asp:Label>
&nbsp;
            <asp:Label ID="Label56" runat="server" Visible="False"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        </h2>
    
    </div>
            <table style="width: 100%; height: 91px;">
                <tr>
                    <td class="style1">
                        <asp:Label ID="Label5" runat="server" Text="Application" Font-Bold="True"></asp:Label>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td class="style2">


        <asp:Label ID="Label1" runat="server" Text="Type Request Here :" ForeColor="#990099"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" TextMode="MultiLine" 
                            Height="112px" Width="645px"></asp:TextBox>
                    </td>
                </tr>
                    
            </table>


        <p>
        <asp:Button ID="Button1" runat="server" Text="SEND REQUEST" 
                onclick="Button1_Click" />
    
    </p>
    </form>

</body>
</html>
