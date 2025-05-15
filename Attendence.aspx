<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Attendence.aspx.cs" Inherits="Attendence" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <asp:Label ID="Label54" runat="server" Text="ATTENDENCE LOG" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        <br />
        <br />
    </div>
    <div align=center style="height: 954px">
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" EnableTheming="True" Theme="Youthful" 
            style="margin-left: 0px" Width="40%">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="EMP_CODE" VisibleIndex="0" Width="40px" 
                    Caption="Apprentice No">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CARD_NO" VisibleIndex="1" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="Date &amp; Time" FieldName="ATTDATETIME" 
                    VisibleIndex="2">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="ESTABLISHMENT_ID" VisibleIndex="3" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TERMINAL_ID" VisibleIndex="4" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="POSTED_DATE" VisibleIndex="5" 
                    Caption="Posted Date" Visible="False">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="CPU_ID" VisibleIndex="6" Visible="False">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;TR_BIO_EMP_ATTN_RAW_DATA&quot;">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
