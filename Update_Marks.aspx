<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Marks.aspx.cs" Inherits="Update_Marks" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



        .style1
        {
            width: 244px;
        }
        .style2
        {
            color: #800000;
        }
        .style3
        {
            color: #FF3300;
        }
        .style7
        {
            color: #000000;
            width: 201px;
        }
        .style9
        {
            color: #800000;
            width: 136px;
        }
        .style10
        {
            color: #000000;
            width: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
                  <br />
                  <asp:Label ID="Label1" runat="server" 
            Text="UPDATE APPRENTICE MARKS DETAILS" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
        <br />
              <table style="width: 100%; height: 100px;">
                <tr>
                    <td class="style9">
                        <span class="style11"><strong><span class="style2">
                        <br />
                        DETAILS</span>
                        </strong></span>&nbsp;<hr />
                    </td>
                </tr>
                 <tr>
                    <td class="style10">


                        Apprentice Number :
                    </td>
                    <td class="style10">
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="140px" 
                            Enabled="False"></asp:TextBox>
                    </td>
                     <%--</tr>
                <tr>--%>
                    <td class="style10">


                        Apprentice Name :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="300px" 
                            Enabled="False"></asp:TextBox>

                        <br />

                    </td>
                </tr>
                </table>
        <br />
            <table style="width: 100%; height: 100px;">  
        <tr>
                    <td class="style1">
                        <asp:Label ID="Label24" runat="server" 
                            Font-Bold="True" style="color: #800000">APPRENTICE MARKS UPDATE</asp:Label>
                        <hr />
                    </td>
                      <td>                        <br />
                    </td>
                </tr>
          
                              <tr>
                    <td class="style1">


        <asp:Label ID="Label46" runat="server" Text="Sessional Marks :"></asp:Label>
                    </td>
                    <td>
        <asp:TextBox ID="TextBox31" runat="server" style="margin-left: 0px" Width="93px"></asp:TextBox>
                        &nbsp;<span class="style3"><strong> Enter marks out of 100</strong></span></td>
      </table>
<div>
    
        <br />
    
        <asp:Button ID="Button_Update_Record" runat="server" Text="UPDATE RECORD" onclick="Button_Update_Record_Click" 
                 BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" ForeColor="#3333CC" 
                 Height="25px" Width="160px" />
    
    </div>
    </form>
</body>
</html>
