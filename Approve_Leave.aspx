<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Approve_Leave.aspx.cs" Inherits="Approve_Leave" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700; height: 762px;">
    
        <br />
         <asp:Label ID="Label1" runat="server" Text="APPROVE LEAVE " Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
  
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          
        <asp:Button ID="Button1" runat="server" Text="LEAVE HISTORY" 
            style="margin-left: 925px" BackColor="#006666" Font-Bold="True" 
            Font-Size="Medium" ForeColor="White" onclick="Button1_Click" 
            Width="145px" />
  
        <br />
    
        <br />
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="100%" Theme="Glass">
            <Columns>
                <dx:GridViewCommandColumn Caption="Select" ShowSelectCheckbox="True" 
                    VisibleIndex="0" Width="20px">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="1" 
                    Caption="Apprentice No" Width="30px">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LEAVE_TYPE" VisibleIndex="3" 
                    Caption="Leave Type" Width="120px">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FROM_DATE" VisibleIndex="4" 
                    Caption="From Date " Width="80px">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="TO_DATE" VisibleIndex="5" 
                    Caption="To Date" Width="80px">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_STATUS" 
                    VisibleIndex="6" Caption="R/O Status" Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SO_STATUS" Visible="False" 
                    VisibleIndex="7">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REASON" VisibleIndex="8">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SHIFT" VisibleIndex="9" Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="NON_PUNCH_DATE" VisibleIndex="10" 
                    Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="WHICH_NON_PUNCH" VisibleIndex="11" 
                    Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OCCASION" VisibleIndex="12" 
                    Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_PBNO_NAME" Visible="False" 
                    VisibleIndex="13">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="2" 
                    Caption="Apprentice Name" Width="200px">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM TRAINING_TRAINEE_LEAVE
WHERE RO_STATUS = 'PENDING'
">
        </asp:SqlDataSource>
        <br />
    
        <asp:Button ID="Button_Approve" runat="server" BackColor="#006600" 
            ForeColor="White" onclick="Button_Approve_Leave_Click" 
            style="font-weight: 700; font-size: medium; margin-bottom: 0px; margin-left: 22px;" 
            Text="+SANCTION" />
&nbsp;&nbsp;
        <asp:Button ID="Button_Reject" runat="server" BackColor="#CC0000" ForeColor="White" 
            onclick="Button_Reject_Leave_Click1" 
            style="font-weight: 700; font-size: medium" Text="-REJECT" />
        &nbsp;&nbsp;&nbsp;
          
        <br />
    
        <br />
        <br />
        <br />
         <asp:Label ID="Label2" runat="server" Text="APPROVE CONDONATION" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
  
        <br />
        <br />
        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Width="100%" Theme="Glass">
            <Columns>
                <dx:GridViewCommandColumn Caption="Select" ShowSelectCheckbox="True" 
                    VisibleIndex="0" Width="20px">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="1" 
                    Caption="Apprentice No" Width="30px">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="LEAVE_TYPE" VisibleIndex="3" 
                    Caption="Leave Type" Width="120px">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="FROM_DATE" VisibleIndex="4" 
                    Caption="From Date " Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="TO_DATE" VisibleIndex="5" 
                    Caption="To Date" Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_STATUS" 
                    VisibleIndex="6" Caption="R/O Status" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SO_STATUS" Visible="False" 
                    VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REASON" VisibleIndex="8" Visible="False">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SHIFT" VisibleIndex="9">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="NON_PUNCH_DATE" VisibleIndex="10" 
                    Caption="Non Punch Date">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="WHICH_NON_PUNCH" VisibleIndex="11" 
                    Caption="Which Non Punch">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OCCASION" VisibleIndex="12" 
                    Caption="Occasion">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_PBNO_NAME" Visible="False" 
                    VisibleIndex="13">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="2" 
                    Caption="Apprentice Name" Width="200px">
                    <HeaderStyle HorizontalAlign="Center" />
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM TRAINING_TRAINEE_LEAVE
WHERE RO_STATUS = 'PENDING'
AND LEAVE_TYPE = 'Condonation'">
        </asp:SqlDataSource>
        <br />
    
        <asp:Button ID="Button_Approve0" runat="server" BackColor="#006600" 
            ForeColor="White" onclick="Button_Approve_Leave_Click" 
            style="font-weight: 700; font-size: medium; margin-bottom: 0px; margin-left: 22px;" 
            Text="+SANCTION" />
&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;</div>
    </form>
</body>
</html>
