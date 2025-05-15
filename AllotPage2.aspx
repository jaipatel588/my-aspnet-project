<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllotPage2.aspx.cs" Inherits="AllotPage2" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 1029px;
        }
    </style>
</head>
<body style="height: 1386px">
    <form id="form1" runat="server">
    <div>
        <h2>
        <asp:Label ID="Label54" runat="server" Text="ALLOT DEPARTMENT" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        </h2>
        </div>
        <div align=center>
            <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" EnableTheming="True" Theme="PlasticBlue" 
                Width="80%">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="1" 
                        Caption="Apprentice Name">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_NO" 
                        VisibleIndex="0" Caption="Apprentice Number">
                         <Settings AutoFilterCondition="Contains" />
                         <DataItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# "~/Allot_Department.aspx?appt_no="+Eval("APPT_NO","{0}") + "&appt_name="+Eval("APPT_NAME","{0}")%>' Text=<%# Eval("APPT_NO")%> ></asp:HyperLink>
                        </DataItemTemplate>
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
                    <dx:GridViewDataTextColumn FieldName="GENDER" Visible="False" 
                        VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_DOB" VisibleIndex="5" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TRADE_CODE" VisibleIndex="6" 
                        Visible="False">
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
                    <dx:GridViewDataTextColumn FieldName="STATE" VisibleIndex="17" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" VisibleIndex="18" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" VisibleIndex="19" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EDUCATION_TRADE" VisibleIndex="20" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OTHER" Visible="False" 
                        VisibleIndex="21">
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
                    <dx:GridViewDataTextColumn Caption="Department No" FieldName="DEPT_NO" 
                        VisibleIndex="27">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" Visible="False" 
                        VisibleIndex="28">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" Visible="False" 
                        VisibleIndex="29">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn Caption="R/O Pbno &amp; Name" FieldName="RO_PBNO" 
                        VisibleIndex="30">
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
                    <dx:GridViewDataTextColumn Caption="R/O Acceptance Status" 
                        FieldName="RO_APPROVAL_STATUS" VisibleIndex="42">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsPager PageSize="20">
                </SettingsPager>
                <settings showfilterrow="True" />

<Settings ShowFilterRow="True"></Settings>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                SelectCommand="SELECT * FROM &quot;TRAINING_TRAINEE_MASTER&quot;
order by appt_no">
            </asp:SqlDataSource>
  </div>

    </form>
    
</body>
</html>
