<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Apply_Leave.aspx.cs" Inherits="Apply_Leave" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style3
        {
            width: 244px;
        }
        .style4
        {
            width: 216px;
        }
        .style5
        {
            width: 212px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 779px">
        <br />
        <asp:Label ID="Label1" runat="server" Text="APPLY FOR LEAVE" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
            ID="Label_Name" runat="server"></asp:Label>
        &nbsp;&nbsp;<asp:Label ID="Label_Appt_no" runat="server"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        <asp:Label ID="Label_Avail_CL" runat="server" Text="Available CL : "></asp:Label>
        <asp:Label ID="Avail_CL" runat="server"></asp:Label>
        <br />
       
         <table style="height: 46px; width: 1038px">
        <thead>

        <tr>
            <td font ="True" class="style4"><strong>
                <asp:Label ID="Label2" runat="server" Text="TYPE OF LEAVE :"></asp:Label>
&nbsp;</strong> </td>
            <td class="style5"><asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px" 
        Width="202px" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>SELECT</asp:ListItem>
        <asp:ListItem>Casual Leave</asp:ListItem>
        <asp:ListItem>Vacational Leave</asp:ListItem>
        <asp:ListItem>Optional Leave</asp:ListItem>
        <asp:ListItem>CL - Half Day</asp:ListItem>
        <asp:ListItem>C - Off</asp:ListItem>
        <asp:ListItem>Condonation</asp:ListItem>
    </asp:DropDownList>
                <br />
                <br />
            </td>
<td  class="style3"><strong>
    <asp:Label ID="Label6" runat="server" Text="SHIFT :"></asp:Label>
    </strong>
            <td>
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                    RepeatDirection="Horizontal" Width="172px">
                    <asp:ListItem>First</asp:ListItem>
                    <asp:ListItem>Second</asp:ListItem>
                </asp:RadioButtonList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr> </td>
        </tr>

        <tr>
            <td class="style4"><strong>
                <asp:Label ID="Label3" runat="server" Text="FROM DATE :"></asp:Label>
                </strong></td>
            <td class="style5"><dx:ASPxDateEdit 
        ID="ASPxDateEdit1" runat="server" Theme="Metropolis" 
        style="margin-left: 0px" Width="203px"></dx:ASPxDateEdit> 
                <asp:Label ID="Label10" runat="server" Visible="False"></asp:Label>
                <br />
            </td>
            <td class="style3"><strong>
                <asp:Label ID="Label7" runat="server" Text="NON - PUNCHING DATE :"></asp:Label>
                </strong></td>
            <td>
                <dx:ASPxDateEdit 
        ID="ASPxDateEdit3" runat="server" Theme="Metropolis" 
        style="margin-left: 0px" Width="203px"></dx:ASPxDateEdit>
                <asp:Label ID="Label12" runat="server" Visible="False"></asp:Label>
                <br />
            </td>
            

        <tr>
            <td class="style4"><strong>
                <asp:Label ID="Label4" runat="server" Text="TO DATE :"></asp:Label>
                </strong></td>
            <td class="style5"><dx:ASPxDateEdit 
        ID="ASPxDateEdit2" runat="server" Theme="Metropolis" 
        style="margin-left: 0px" Width="202px"></dx:ASPxDateEdit>
                <asp:Label ID="Label11" runat="server" Visible="False"></asp:Label>
                <br />
            </td>

            <td class="style3"><strong>
                <asp:Label ID="Label8" runat="server" Text="WHICH NON PUNCHING :"></asp:Label>
                </strong></td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" Width="155px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
       </tr>

        <tr>
        <td class="style4"><strong>
            <asp:Label ID="Label5" runat="server" Text="REASON OF LEAVE :"></asp:Label>
            </strong></td>
        <td class="style5"> <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
        Width="201px" ></asp:TextBox>

            <br />

        <td>
            <strong>
            <asp:Label ID="Label9" runat="server" Text="NO. OF OCCASION :"></asp:Label>
            </strong></td>
            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;<asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    RepeatDirection="Horizontal" Width="293px">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </td>
        </tr>
 </thead>
 </table>
 <br />
       <dx:ASPxButton ID="ASPxButton1" runat="server" style="margin-left: 0px" 
        Text="APPLY FOR LEAVE" Width="198px" Font-Bold="True" Font-Size="Small" 
            onclick="ASPxButton1_Click" ForeColor="#3333CC" >
    </dx:ASPxButton>
       
   <%--<asp:Label 
        ID="Label2" runat="server" Text="TYPE OF LEAVE :" Font-Bold="True"></asp:Label>
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px" 
        Width="202px">
        <asp:ListItem>SELECT</asp:ListItem>
        <asp:ListItem>Casual Leave</asp:ListItem>
        <asp:ListItem>Vacational Leave</asp:ListItem>
        <asp:ListItem>Optional Leave</asp:ListItem>
        <asp:ListItem>CL - Half Day</asp:ListItem>
        <asp:ListItem>C - Off</asp:ListItem>
        <asp:ListItem>Condonation</asp:ListItem>
    </asp:DropDownList>
    <br />

    <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    
    <asp:Label 
        ID="Label3" runat="server" Text="FROM DATE :" Font-Bold="True"></asp:Label>
        
        <br />
        <br />
       <asp:Label 
        ID="Label4" runat="server" Text="TO DATE :" Font-Bold="True"></asp:Label>
        &nbsp; 
        <br />
        <br />
   
       <asp:Label 
        ID="Label5" runat="server" Text="REASON OF LEAVE :" Font-Bold="True"></asp:Label>
   
    <br />
   
    <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" 
        Width="201px" ></asp:TextBox>
    <br />
    <br />&nbsp;&nbsp;&nbsp;&nbsp;
    
    <br />
    <br />--%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
</div>
    </form>
</body>
</html>
