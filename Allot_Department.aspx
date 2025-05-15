<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Allot_Department.aspx.cs" Inherits="Allot_Department" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 256px;
        }
        .style2
        {
            width: 142px;
        }
        .style3
        {
            width: 214px;
        }
        .style4
        {
            width: 135px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 539px">
        <h2>
        <asp:Label ID="Label1" runat="server" Text="ALLOT DEPARTMENT" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        </h2>
       <div style="height: 1036px">
      <table style="width: 100%; height: 100px;">
                <tr>
                    <td class="style2">
                        <span class="style11"><strong>DETAILS
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
                <br />
    <table style="width: 790px">
                     <tr>
                    <td class="style1">
                        <strong>DEPARTMENT DETAILS</strong><hr />
                    </td>
                </tr>
                  <tr>
                    <td class="style1">


        <asp:Label ID="Label25" runat="server" Text="Department No :"></asp:Label>
                    </td>
                    <td>
                    <asp:DropDownList ID="DropDownList6" runat="server" 
    DataSourceID="SqlDataSource1" DataTextField="ACTUAL_COST_CENTRE" 
    DataValueField="ACTUAL_COST_CENTRE" AutoPostBack="True" Width="101px">
</asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                            SelectCommand="select distinct  v.actual_cost_centre
from ic_mro.employee_information v
WHERE v.emp_category='OFF'
AND v.emp_active='TRUE'
order by v.actual_cost_centre">
                        </asp:SqlDataSource>
                        <br />
     
                              <tr>
                    <td class="style1">


        <asp:Label ID="Label26" runat="server" Text="Department Joining From :"></asp:Label>
                    </td>
                    <td>
                    <br />
                        <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server">
                        </dx:ASPxDateEdit>
                              <asp:Label ID="Label30" runat="server" Text="Label" Visible="False"></asp:Label>
&nbsp;&nbsp;
                              <tr>
                    <td class="style1">


        <asp:Label ID="Label27" runat="server" Text="Department Joining To  :"></asp:Label>
                    </td>
                    <td>
                        <dx:ASPxDateEdit ID="ASPxDateEdit3" runat="server" >
                        </dx:ASPxDateEdit>

                        <asp:Label ID="Label31" runat="server" Text="Label" Visible="False"></asp:Label>

                        <br />

                    </td>

                   
                              <tr>
                    <td class="style1">


        <asp:Label ID="Label28" runat="server" Text="Reporting Officer Pbno. &amp; Name :"></asp:Label>
                    </td>
                    <td style="font-family: Arial, Helvetica, sans-serif">
                    <asp:DropDownList ID="DropDownList7" runat="server" 
    DataSourceID="SqlDataSource4" DataTextField="ENAME" 
    DataValueField="ENAME" AutoPostBack="True" Width="278px">
</asp:DropDownList>

                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                           ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                            SelectCommand="select emp_code,(v.emp_code||'  '||  v.emp_name) ename, v.actual_cost_centre,
designation_master_api.get_description('31','NSK',v.emp_category,v.emp_desig) designation,
grade_master_api.Get_Description('31','NSK',v.emp_category,v.emp_grade)
from ic_mro.employee_information v
WHERE v.emp_category='OFF'
AND v.emp_active='TRUE'
AND v.actual_cost_centre = :actual_cost_centre">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList6" Name="actual_cost_centre" 
                                    PropertyName="SelectedValue" />
                            </SelectParameters>
                        </asp:SqlDataSource>

     
                    </td><br />
                    <%--<td class="style1">


        <asp:Label ID="Label30" runat="server" Text="Chief Manager PBNO :"></asp:Label>
                    </td>
                    <td>
        <asp:TextBox ID="TextBox24" runat="server" AutoPostBack="True" 
                            ontextchanged="TextBox24_TextChanged1" style="height: 22px" ></asp:TextBox>

                        <br />

                    </td>--%>
                    
                              <tr>
                    <%--<td class="style1">


        <asp:Label ID="Label31" runat="server" Text="Chief Manager Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label55" runat="server" ForeColor="Red"></asp:Label>
                        <br />

                    </td>--%>

                              <tr>
                    <%--<td class="style1">


        <asp:Label ID="Label32" runat="server" Text="DGM PBNO :"></asp:Label>
                    </td>
                    <td>
        <asp:TextBox ID="TextBox26" runat="server" AutoPostBack="True" ontextchanged="TextBox26_TextChanged" 
                            ></asp:TextBox>

                        <br />

                    </td>--%>
                    
                              <tr>
                    <%--<td class="style1">


        <asp:Label ID="Label33" runat="server" Text="DGM Name :"></asp:Label>
                    </td>
                    <td>
                        <asp:Label ID="Label56" runat="server" ForeColor="Red"></asp:Label>
        --%></table>
        <br />

<div align=center>
        <asp:Button ID="Button1" runat="server" Text="ALLOT" onclick="Button1_Click" 
                 BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" ForeColor="#3333CC" 
                 Height="36px" Width="140px" />
</div>    
    </div>
    </form>

</body>
</html>
