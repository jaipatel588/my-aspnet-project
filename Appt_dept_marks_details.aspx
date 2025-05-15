<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Appt_dept_marks_details.aspx.cs" Inherits="Dept_Change_Details" %><%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
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
         <asp:Label ID="Label1" runat="server" Text="DEPARTMENT CHANGE HISTORY" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#FF6600" ></asp:Label>
    
        <br />
        <br />
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" style="margin-left: 0px" Width="100%">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DEPT_NO" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" VisibleIndex="2">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" VisibleIndex="3">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_RO_PBNO" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_RO_NAME" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_CM_PBNO" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_CM_NAME" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DGM_PBNO" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DGM_NAME" VisibleIndex="9">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM &quot;TRAINING_TRAINEE_DEPT_CHANGE&quot;
WHERE APPT_NO = :APPT_NO">
            <SelectParameters>
                <asp:QueryStringParameter Name="APPT_NO" QueryStringField="apptr_no" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
         <asp:Label ID="Label3" runat="server" Text="BANK CHANGE HISTORY" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#FF6600" ></asp:Label>
    
        <br />
    
        <br />
        <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource3" style="margin-left: 0px" Width="100%">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_NAME_HAL" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_ACC_NO_HAL" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_IFSC_HAL" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_NAME_PORTAL" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_ACC_NO_PORTAL" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_IFSC_PORTAL" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;TRAINING_TRAINING_BANK_CHANGE&quot;
WHERE APPT_NO = :APPT_NO">
            <SelectParameters>
                <asp:QueryStringParameter Name="APPT_NO" QueryStringField="apptr_no" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    <p>
         <asp:Label ID="Label2" runat="server" Text="ITI APPRENTICE MARKS" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#FF6600" ></asp:Label>
    
    </p>
    <p>
        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Width="100%">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_COMPLETED" Visible="False" 
                    VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CERTIFICATE_NO" Visible="False" 
                    VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CERTIFICATE_ISSUE" Visible="False" 
                    VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CERTIFICATE_HANDED_TO" Visible="False" 
                    VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="CERTIFICATE_ISSUE_DATE" Visible="False" 
                    VisibleIndex="5">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="WHETHER_LEFT" Visible="False" 
                    VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REASON_OF_LEAVING" Visible="False" 
                    VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="STIPEND_RECOVER" Visible="False" 
                    VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RECOVERY_AMT" Visible="False" 
                    VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DATE_OF_LEAVING" Visible="False" 
                    VisibleIndex="10">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="PRACTICAL_TOPIC" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="MARKS" VisibleIndex="12">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="SESSIONAL_MARKS" VisibleIndex="13">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;TRAINING_APPT_COMPLETED&quot;
WHERE APPT_NO = :APPT_NO">
            <SelectParameters>
                <asp:QueryStringParameter Name="APPT_NO" QueryStringField="apptr_no" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
        </div>
    </form>
</body>
</html>
