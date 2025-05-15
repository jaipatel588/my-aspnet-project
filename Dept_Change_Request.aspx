<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Dept_Change_Request.aspx.cs" Inherits="Dept_Change_Request" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

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
<body style="height: 924px">
    <form id="form1" runat="server">
    <div>
    
        <h2>
        <asp:Label ID="Label54" runat="server" Text="DEPARTMENT CHANGE REQUEST" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        </h2>
        <p>
        <asp:Label ID="Label53" runat="server" Font-Bold="True" Font-Size="Medium" 
            ForeColor="#339933"></asp:Label>
                        &nbsp;<asp:Label ID="Label55" runat="server"></asp:Label>
                        </p>
    
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


        <p style="height: 30px">
        <asp:Button ID="Button1" runat="server" Text="SEND REQUEST" 
                onclick="Button1_Click" />
    
    </p>
    <div align=center>
    <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" Width="80%" EnableTheming="True" 
            Theme="Office2003Blue">
        <Columns>
            <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" 
                Caption="Apprentice No">
                <HeaderStyle HorizontalAlign="Center" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="1" 
                Caption="Apprentice Name">
                <HeaderStyle HorizontalAlign="Center" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="REQUEST" VisibleIndex="2" 
                Caption="Request">
                <HeaderStyle HorizontalAlign="Center" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataTextColumn FieldName="DGM_APPROVAL" VisibleIndex="3" 
                Caption="DGM Approval">
                <HeaderStyle HorizontalAlign="Center" />
            </dx:GridViewDataTextColumn>
            <dx:GridViewDataDateColumn FieldName="REQUEST_DATE" VisibleIndex="4" 
                Caption="Request Date">
                <HeaderStyle HorizontalAlign="Center" />
            </dx:GridViewDataDateColumn>
        </Columns>
    </dx:ASPxGridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
        SelectCommand="SELECT * FROM TRAINING_TRAINEE_DEPTCHANGEREQ
where appt_no = :appt_no">
        <SelectParameters>
            <asp:SessionParameter Name="appt_no" SessionField="user_name" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
