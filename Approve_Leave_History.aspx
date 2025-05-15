<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approve_Leave_History.aspx.cs" Inherits="Approve_Leave_History" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 645px">
    <form id="form1" runat="server">
    <div style="height: 703px">
    
    <div style="font-weight: 700">
         <asp:Label ID="Label1" runat="server" Text="LEAVE HISTORY" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
    </div>
    <br />
    <div align=center>    
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" EnableTheming="True" Theme="Youthful" 
            Width="100%" style="margin-left: 0px; text-align: center;">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" 
                    Caption="Apprentice No">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LEAVE_TYPE" VisibleIndex="2" 
                    Caption="Leave Type">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FROM_DATE" VisibleIndex="3" 
                    Caption="From Date">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="TO_DATE" VisibleIndex="4" 
                    Caption="To Date">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_STATUS" VisibleIndex="6" 
                    Caption="R/O Status">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SO_STATUS" VisibleIndex="7" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Reason" FieldName="REASON" VisibleIndex="5">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Shift" FieldName="SHIFT" VisibleIndex="8" 
                    Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="Non Punch Date" FieldName="NON_PUNCH_DATE" 
                    VisibleIndex="9" Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn Caption="Which Non Punch" 
                    FieldName="WHICH_NON_PUNCH" VisibleIndex="10" Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Occasion" FieldName="OCCASION" 
                    VisibleIndex="11" Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="R/O Pbno &amp; Name" 
                    FieldName="RO_PBNO_NAME" Visible="False" VisibleIndex="12">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Apprentice Name" FieldName="APPT_NAME" 
                    VisibleIndex="1">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM TRAINING_TRAINEE_LEAVE
WHERE RO_STATUS = 'APPROVED'">
        </asp:SqlDataSource>
    
    </div>
        <br />
    
        <br />
         <asp:Label ID="Label2" runat="server" Text="CONDONATION HISTORY" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
        <br />
        <br />
    <div align=center>    
        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" EnableTheming="True" Theme="Youthful" 
            Width="100%" style="margin-left: 0px; text-align: center;">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" 
                    Caption="Apprentice No">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LEAVE_TYPE" VisibleIndex="2" 
                    Caption="Leave Type" Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FROM_DATE" VisibleIndex="3" 
                    Caption="From Date" Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="TO_DATE" VisibleIndex="4" 
                    Caption="To Date" Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_STATUS" VisibleIndex="11" 
                    Caption="R/O Status">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SO_STATUS" VisibleIndex="6" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Reason" FieldName="REASON" VisibleIndex="5" 
                    Visible="False">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Shift" FieldName="SHIFT" VisibleIndex="7">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="Non Punch Date" FieldName="NON_PUNCH_DATE" 
                    VisibleIndex="8">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn Caption="Which Non Punch" 
                    FieldName="WHICH_NON_PUNCH" VisibleIndex="9">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Occasion" FieldName="OCCASION" 
                    VisibleIndex="10">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="R/O Pbno &amp; Name" 
                    FieldName="RO_PBNO_NAME" Visible="False" VisibleIndex="12">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Apprentice Name" FieldName="APPT_NAME" 
                    VisibleIndex="1">
                    <HeaderStyle Font-Bold="True" Font-Size="Small" HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM TRAINING_TRAINEE_LEAVE
WHERE RO_STATUS = 'APPROVED'
AND LEAVE_TYPE = 'Condonation'">
        </asp:SqlDataSource>
    
    </div>
    
    </div>
    </form>
</body>
</html>
