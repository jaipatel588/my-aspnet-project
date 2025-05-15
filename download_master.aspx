<%@ Page Language="C#" AutoEventWireup="true" CodeFile="download_master.aspx.cs" Inherits="download_master" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxTreeList.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList.Export" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div align=center>
    
        <br />
        <br />
        <br />
        <asp:Button ID="Button_Download" runat="server" onclick="Button_Download_Click" 
            style="text-align: center" Text="Download Master" BackColor="#FFFFCC" 
            Font-Bold="True" Font-Size="Large" ForeColor="Red" Width="350px" />
        <br />
        <br />
    </div>
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Theme="Office2003Blue" Visible="False">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="0">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_CONTACT_NO" VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_EMAIL" VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GENDER" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOB" VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TRADE_CODE" VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOJ" VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_ACC_NO" VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_IFSC_CODE" VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PORTAL_REG_NO" VisibleIndex="10">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PROXIMITY_CARD_NO" VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CATEGORY" VisibleIndex="12">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DISABILITY" VisibleIndex="13">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_1" VisibleIndex="14">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_2" VisibleIndex="15">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PINCODE" VisibleIndex="16">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="STATE" VisibleIndex="17">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" VisibleIndex="18">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" VisibleIndex="19">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TRADE" VisibleIndex="20">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OTHER" VisibleIndex="21">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BANK_NAME_PORTAL" VisibleIndex="22">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_HOLDER_NAME_PORTAL" VisibleIndex="23">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_NO_PORTAL" VisibleIndex="24">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IFSC_CODE_PORTAL" VisibleIndex="25">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REMARKS" VisibleIndex="26">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DEPT_NO" VisibleIndex="27">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" VisibleIndex="28">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" VisibleIndex="29">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_PBNO" VisibleIndex="30">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_NAME" VisibleIndex="31">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_REPORTING_DATE" VisibleIndex="32">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_ENDING_DATE" VisibleIndex="33">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DATE_OF_BIRTH" VisibleIndex="34">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="MARKS" VisibleIndex="35">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EMERGENCY_CONTACT_NO" VisibleIndex="36">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AADHAR_NO" VisibleIndex="37">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="STATUS" VisibleIndex="38">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ITI_MARKS" VisibleIndex="39">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CONTRACT_GENERATED" VisibleIndex="40">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CONTRACT_NO" VisibleIndex="41">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_APPROVAL_STATUS" VisibleIndex="42">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager PageSize="30">
            </SettingsPager>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT * FROM TRAINING_TRAINEE_MASTER
order by appt_no">
        </asp:SqlDataSource>
        <dx:ASPxGridViewExporter ID="ASPxGridViewExporter1" runat="server">
        </dx:ASPxGridViewExporter>
        <br />
    
    </div>
    </form>
</body>
</html>
