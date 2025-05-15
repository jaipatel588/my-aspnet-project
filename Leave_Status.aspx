<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Leave_Status.aspx.cs" Inherits="Leave_Status" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
         <asp:Label ID="Label1" runat="server" Text="APPLIED LEAVE STATUS" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
    </div>
    <br />
    <div align=center style="height: 601px">    
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" EnableTheming="True" Theme="Office2003Olive" 
            Width="80%" style="margin-left: 0px; text-align: center;">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" 
                    Caption="Apprentice No">
                    <HeaderStyle Font-Bold="False" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LEAVE_TYPE" VisibleIndex="1" 
                    Caption="Leave Type">
                    <HeaderStyle Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FROM_DATE" VisibleIndex="2" 
                    Caption="From Date">
                    <HeaderStyle Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="TO_DATE" VisibleIndex="3" 
                    Caption="To Date">
                    <HeaderStyle Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_STATUS" VisibleIndex="4" 
                    Caption="R/O Status">
                    <HeaderStyle Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle ForeColor="Red" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SO_STATUS" VisibleIndex="5" 
                    Caption="S/O Status">
                    <HeaderStyle Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle ForeColor="Red" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;TRAINING_TRAINEE_LEAVE&quot;">
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
</body>
</html>
