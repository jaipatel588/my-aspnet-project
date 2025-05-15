<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trainee_Record.aspx.cs" Inherits="Trainee_Record" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1386px">
    <form id="form1" runat="server">
   
    
        <br />
         <asp:Label ID="Label1" runat="server" Text="APPRENTICE RECORDS " Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
        <br />

<div align=center>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            Theme="PlasticBlue" Width="100%" style="margin-left: 0px; text-align: center;" 
            EnableTheming="True" Font-Size="Small">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="1" 
                    Caption="Appreantice Name">
                    <Settings AutoFilterCondition="Contains" />
                    <HeaderStyle HorizontalAlign="Left" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" 
                    Caption="Appreantice No">
                    <Settings AutoFilterCondition="Contains" />
                    <HeaderStyle HorizontalAlign="Left" />
                     <DataItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# "~/Trainee_Info.aspx?appt_name="+Eval("APPT_NAME","{0}") + "&appt_no="+Eval("APPT_NO","{0}") + "&appt_contact_no="+Eval("APPT_CONTACT_NO","{0}") + "&appt_email="+Eval("APPT_EMAIL","{0}")+ "&gender="+Eval("GENDER","{0}") + "&appt_dob="+Eval("APPT_DOB","{0}") + "&trade_code="+Eval("TRADE_CODE","{0}") + "&appt_doj="+Eval("APPT_DOJ","{0}")  + "&appt_bank_acc_no="+Eval("APPT_BANK_ACC_NO","{0}")  + "&appt_bank_ifsc_code="+Eval("APPT_BANK_IFSC_CODE","{0}") + "&portal_reg_no="+Eval("PORTAL_REG_NO","{0}") + "&proximity_card_no="+Eval("PROXIMITY_CARD_NO","{0}") + "&category="+Eval("CATEGORY","{0}")+ "&disability="+Eval("DISABILITY","{0}")+ "&appt_reporting_date="+Eval("APPT_REPORTING_DATE","{0}")+ "&appt_ending_date="+Eval("APPT_ENDING_DATE","{0}")+ "&date_of_birth="+Eval("DATE_OF_BIRTH","{0}")+ "&emergency_contact_no="+Eval("EMERGENCY_CONTACT_NO","{0}")+ "&aadhar_no="+Eval("AADHAR_NO","{0}")+ "&address_line_1="+Eval("ADDRESS_LINE_1","{0}")+ "&address_line_2="+Eval("ADDRESS_LINE_2","{0}")+ "&pincode="+Eval("PINCODE","{0}")+ "&state="+Eval("STATE","{0}")+ "&education_type="+Eval("EDUCATION_TYPE","{0}")+ "&passout_year="+Eval("PASSOUT_YEAR","{0}")+ "&education_trade="+Eval("EDUCATION_TRADE","{0}")+ "&other="+Eval("OTHER","{0}")+ "&marks="+Eval("MARKS","{0}")+ "&bank_name_portal="+Eval("BANK_NAME_PORTAL","{0}")+ "&acc_holder_name_portal="+Eval("ACC_HOLDER_NAME_PORTAL","{0}")+ "&acc_no_portal="+Eval("ACC_NO_PORTAL","{0}")+ "&ifsc_code_portal="+Eval("IFSC_CODE_PORTAL","{0}")+ "&remarks="+Eval("REMARKS","{0}")+ "&status="+Eval("STATUS","{0}")+ "&dept_no="+Eval("DEPT_NO","{0}")+ "&dept_joining_from="+Eval("DEPT_JOINING_FROM","{0}")+ "&ro_pbno="+Eval("RO_PBNO","{0}")%>' Text=<%# Eval("APPT_NO")%> ></asp:HyperLink>
                        </DataItemTemplate>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_CONTACT_NO" VisibleIndex="2" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_EMAIL" VisibleIndex="3" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GENDER" VisibleIndex="4" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOB" VisibleIndex="5" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TRADE_CODE" VisibleIndex="6" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOJ" VisibleIndex="7" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="APPT_BANK_ACC_NO" VisibleIndex="8" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="APPT_BANK_IFSC_CODE" 
                    VisibleIndex="9" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PORTAL_REG_NO" VisibleIndex="10" 
                    Caption="Portal Reg No">
                    <HeaderStyle HorizontalAlign="Left" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PROXIMITY_CARD_NO" VisibleIndex="11" 
                    Caption="Proximity Card No">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CATEGORY" VisibleIndex="12" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DISABILITY" VisibleIndex="13" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_1" VisibleIndex="14" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_2" VisibleIndex="15" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PINCODE" VisibleIndex="16" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="STATE" VisibleIndex="17" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" VisibleIndex="18" 
                    Caption="Education Type">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" VisibleIndex="19" 
                    Caption="Passout Year">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="EDUCATION_TRADE" 
                    VisibleIndex="20" Caption="Eduaction Trade">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="OTHER" 
                    VisibleIndex="21" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BANK_NAME_PORTAL" VisibleIndex="22" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="ACC_HOLDER_NAME_PORTAL" 
                    VisibleIndex="23" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_NO_PORTAL" VisibleIndex="24" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IFSC_CODE_PORTAL" VisibleIndex="25" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REMARKS" VisibleIndex="26" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Dept No" FieldName="DEPT_NO" 
                    VisibleIndex="27">
                    <HeaderStyle HorizontalAlign="Left" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" VisibleIndex="28" 
                    Caption="Dept Joining From">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" VisibleIndex="29" 
                    Visible="False">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_PBNO" VisibleIndex="30" 
                    Caption="RO Pbno &amp; Name">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_NAME" VisibleIndex="31" 
                    Visible="False">
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
                <dx:GridViewDataTextColumn FieldName="ITI_MARKS" 
                    VisibleIndex="39" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Contract Generated" 
                    FieldName="CONTRACT_GENERATED" VisibleIndex="40">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Contract No" FieldName="CONTRACT_NO" 
                    VisibleIndex="41">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager PageSize="15">
            </SettingsPager>
<Settings ShowFilterRow="True" ColumnMinWidth="30"></Settings>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;TRAINING_TRAINEE_MASTER&quot;
order by appt_no asc">
        </asp:SqlDataSource>
        <br />
</div>   
    </form>
</body>
</html>
