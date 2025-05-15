<%@ Page Language="C#" AutoEventWireup="true" CodeFile="First_Aid_Request_Approve.aspx.cs" Inherits="First_Aid_Request_Approve" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <br />
    <asp:Label ID="Label1" runat="server" 
            Text="APPROVE FIRST AID REQUEST" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
    <br />
&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <div align=center>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" EnableTheming="True" Theme="Office2003Olive" 
            Width="100%" KeyFieldName="APPT_NO">
            <Columns>
                <dx:GridViewCommandColumn Caption="Select " ShowSelectCheckbox="True" 
                    VisibleIndex="0" Width="50px">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="2" Width="250px" 
                    Caption="Apprentice Name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="1" Width="40px" 
                    Caption="Apprentice No">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REQUEST" VisibleIndex="3" 
                    Caption="Request ">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_APPROVAL" VisibleIndex="4" 
                    Width="50px" Caption="R/O Approval">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle ForeColor="Red" HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="REQUEST_DATE" VisibleIndex="5" 
                    Width="50px" Caption="Request Date">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_NAME" Visible="False" VisibleIndex="6">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="select APPT_NAME, APPT_NO, REQUEST, RO_APPROVAL, REQUEST_DATE, RO_NAME 
from TRAINING_TRAINEE_FIRSTAID_REQ
WHERE instr( RO_NAME, :user_name) &gt; 0 
AND RO_APPROVAL = 'PENDING' ">
        <SelectParameters>
            <asp:SessionParameter Name="user_name" SessionField="user_name" />
        </SelectParameters>
        </asp:SqlDataSource>
        <br />
        </div>
    <p>
    
        <asp:Button ID="Button_Approve" runat="server" BackColor="#006600" 
            ForeColor="White" onclick="Button_Approve_Click" 
            style="font-weight: 700; font-size: medium; margin-bottom: 0px; margin-left: 0px;" 
            Text="APPROVE" />
    </p>
    </form>
</body>
</html>
