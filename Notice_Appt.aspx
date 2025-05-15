<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Notice_Appt.aspx.cs" Inherits="Notice_Appt" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">



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
        <asp:Label ID="Label54" runat="server" Text="MESSAGE BY TRAINING DEPT." Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        </h2>
    
    </div>
    <div align=center>

                        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                            DataSourceID="SqlDataSource1" Theme="Office2003Silver" 
                            EnableTheming="True" Width="70%">
                            <Columns>
                                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="1" 
                                    Visible="False">
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataTextColumn FieldName="MESSAGE" VisibleIndex="3" 
                                    Caption="MESSAGE">
                                    <HeaderStyle HorizontalAlign="Center" />
                                </dx:GridViewDataTextColumn>
                                <dx:GridViewDataDateColumn Caption="DATE" FieldName="MESSAGE_DATE" 
                                    VisibleIndex="2" Width="70px">
                                    <HeaderStyle HorizontalAlign="Center" />
                                    <CellStyle HorizontalAlign="Center">
                                    </CellStyle>
                                </dx:GridViewDataDateColumn>
                            </Columns>
                        </dx:ASPxGridView>
            </table>
            </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
        SelectCommand="select APPT_NAME, APPT_NO, MESSAGE, MESSAGE_DATE 
from TRAINING_TRAINEE_NOTICE
WHERE instr( APPT_NO, :user_name) &gt; 0  ">
        <SelectParameters>
            <asp:SessionParameter Name="user_name" SessionField="user_name" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
