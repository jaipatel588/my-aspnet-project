<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ODGM_Alloted_trainee_RO.aspx.cs" Inherits="ODGM_Alloted_trainee_RO" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dx" %>
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
    
        &nbsp;
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
    
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Width="100%" EnableTheming="True" 
            Theme="Glass">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="1" 
                    Caption="Apprentice Name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" 
                    Caption="Apprentice No ">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_CONTACT_NO" Visible="False" 
                    VisibleIndex="2">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_EMAIL" Visible="False" 
                    VisibleIndex="3">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GENDER" Visible="False" VisibleIndex="4">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOB" Visible="False" 
                    VisibleIndex="5">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TRADE_CODE" Visible="False" 
                    VisibleIndex="6">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOJ" Visible="False" 
                    VisibleIndex="7">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_ACC_NO" Visible="False" 
                    VisibleIndex="8">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_IFSC_CODE" Visible="False" 
                    VisibleIndex="9">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PORTAL_REG_NO" Visible="False" 
                    VisibleIndex="10">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PROXIMITY_CARD_NO" Visible="False" 
                    VisibleIndex="11">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CATEGORY" Visible="False" 
                    VisibleIndex="12">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DISABILITY" Visible="False" 
                    VisibleIndex="13">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_1" Visible="False" 
                    VisibleIndex="14">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_2" Visible="False" 
                    VisibleIndex="15">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PINCODE" Visible="False" 
                    VisibleIndex="16">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="STATE" Visible="False" VisibleIndex="17">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" VisibleIndex="18" 
                    Caption="Education Type">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" Visible="False" 
                    VisibleIndex="19">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TRADE" Visible="False" 
                    VisibleIndex="20">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OTHER" Visible="False" VisibleIndex="21">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BANK_NAME_PORTAL" Visible="False" 
                    VisibleIndex="22">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_HOLDER_NAME_PORTAL" Visible="False" 
                    VisibleIndex="23">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_NO_PORTAL" Visible="False" 
                    VisibleIndex="24">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IFSC_CODE_PORTAL" Visible="False" 
                    VisibleIndex="25">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REMARKS" Visible="False" 
                    VisibleIndex="26">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DEPT_NO" VisibleIndex="27" 
                    Caption="Department No ">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" VisibleIndex="28" 
                    Caption="Dept Joining From">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" VisibleIndex="29" 
                    Caption="Dept Joining To">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_PBNO" VisibleIndex="30" 
                    Caption="RO Pbno &amp; Name">
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_NAME" Visible="False" 
                    VisibleIndex="31">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_REPORTING_DATE" Visible="False" 
                    VisibleIndex="32">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_ENDING_DATE" Visible="False" 
                    VisibleIndex="33">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DATE_OF_BIRTH" Visible="False" 
                    VisibleIndex="34">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="MARKS" Visible="False" VisibleIndex="35">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EMERGENCY_CONTACT_NO" Visible="False" 
                    VisibleIndex="36">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AADHAR_NO" Visible="False" 
                    VisibleIndex="37">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="STATUS" Visible="False" VisibleIndex="38">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ITI_MARKS" Visible="False" 
                    VisibleIndex="39">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CONTRACT_GENERATED" Visible="False" 
                    VisibleIndex="40">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CONTRACT_NO" Visible="False" 
                    VisibleIndex="41">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_APPROVAL_STATUS" Visible="False" 
                    VisibleIndex="42">
                </dx:GridViewDataTextColumn>
            </Columns>
        </dx:ASPxGridView>
    
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT * FROM &quot;TRAINING_TRAINEE_MASTER&quot;
WHERE DEPT_NO = :DEPT_NO">
        <SelectParameters>
            <asp:ControlParameter ControlID="Label2" Name="DEPT_NO" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    </form>
</body>
</html>
