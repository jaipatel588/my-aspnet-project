<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appt_Notice_Send1.aspx.cs" Inherits="Appt_Notice_Send1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style2
        {
            width: 186px;
        }
        .style3
        {
            width: 214px;
        }
        .style4
        {
            width: 170px;
        }
        .style5
        {
            width: 133px;
        }
        .style6
        {
            color: #800000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p>
        <asp:Label ID="Label1" runat="server" Text="MESSAGE FOR APPRENTICE" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        </p>
      <table style="width: 100%; height: 100px;">
                <tr>
                    <td class="style2">
                        <span class="style11"><strong><span class="style6">DETAILS</span>
                        </strong></span>&nbsp;<hr />
                    </td>
                </tr>
                 <tr>
                    <td class="style2">


                        Apprentice Number :
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="140px"></asp:TextBox>
                    </td>
                <%--</tr>
                <tr>--%>
                    <td class="style4">


                        Apprentice Name :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="300px"></asp:TextBox>

                        <br />

                    </td>
                </tr>
                </table>
            <table style="width: 100%; height: 91px;">
                <tr>
                    <td class="style5">


        <asp:Label ID="Label2" runat="server" Text="Type Message Here :" ForeColor="#990099"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" TextMode="MultiLine" 
                            Height="112px" Width="645px"></asp:TextBox>
                    </td>
                </tr>
                    
            </table>


        <p>
        <asp:Button ID="Button1" runat="server" Text="SEND" onclick="Button1_Click" 
                 BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" ForeColor="#3333CC" 
                 Height="36px" Width="140px" />
            </p>


        </form>
</body>
</html>
