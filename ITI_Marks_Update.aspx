<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ITI_Marks_Update.aspx.cs" Inherits="ITI_Marks_Update" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1386px">
    <form id="form1" runat="server">
    <div>
    
    <div>
        <h2>
        <asp:Label ID="Label54" runat="server" Text="UPDATE ITI APPRENTICE MARKS" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        </h2>
        </div>
        <div align=center>
            <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" EnableTheming="True" Theme="PlasticBlue" 
                Width="60%">
                <Columns>
                    <dx:GridViewDataTextColumn Caption="Apprentice Name" FieldName="APPT_NAME" 
                        VisibleIndex="2">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Apprentice No" FieldName="APPT_NO" 
                        VisibleIndex="1">
                          <DataItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# "~/Update_Marks.aspx?appt_name="+Eval("APPT_NAME","{0}") + "&appt_no="+Eval("APPT_NO","{0}")%>' Text=<%# Eval("APPT_NO")%> ></asp:HyperLink>
                        </DataItemTemplate>
                         <HeaderStyle HorizontalAlign="Center" />
                         <CellStyle HorizontalAlign="Center">
                         </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_CONTACT_NO" Visible="False" 
                        VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_EMAIL" Visible="False" 
                        VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="GENDER" Visible="False" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_DOB" Visible="False" 
                        VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TRADE_CODE" Visible="False" 
                        VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_DOJ" Visible="False" 
                        VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_BANK_ACC_NO" Visible="False" 
                        VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_BANK_IFSC_CODE" Visible="False" 
                        VisibleIndex="10">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PORTAL_REG_NO" Visible="False" 
                        VisibleIndex="11">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PROXIMITY_CARD_NO" Visible="False" 
                        VisibleIndex="12">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CATEGORY" Visible="False" 
                        VisibleIndex="13">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DISABILITY" Visible="False" 
                        VisibleIndex="14">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_1" Visible="False" 
                        VisibleIndex="15">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_2" Visible="False" 
                        VisibleIndex="16">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PINCODE" Visible="False" 
                        VisibleIndex="17">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="STATE" Visible="False" VisibleIndex="18">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" Visible="False" 
                        VisibleIndex="19">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" Visible="False" 
                        VisibleIndex="20">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EDUCATION_TRADE" Visible="False" 
                        VisibleIndex="21">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OTHER" Visible="False" VisibleIndex="22">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="BANK_NAME_PORTAL" Visible="False" 
                        VisibleIndex="23">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ACC_HOLDER_NAME_PORTAL" Visible="False" 
                        VisibleIndex="24">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ACC_NO_PORTAL" Visible="False" 
                        VisibleIndex="25">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="IFSC_CODE_PORTAL" Visible="False" 
                        VisibleIndex="26">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="REMARKS" Visible="False" 
                        VisibleIndex="27">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DEPT_NO" Visible="False" 
                        VisibleIndex="28">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" Visible="False" 
                        VisibleIndex="29">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" Visible="False" 
                        VisibleIndex="30">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="RO_PBNO" Visible="False" 
                        VisibleIndex="31">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="RO_NAME" Visible="False" 
                        VisibleIndex="32">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_REPORTING_DATE" Visible="False" 
                        VisibleIndex="33">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_ENDING_DATE" Visible="False" 
                        VisibleIndex="34">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DATE_OF_BIRTH" Visible="False" 
                        VisibleIndex="35">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MARKS" Visible="False" VisibleIndex="36">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMERGENCY_CONTACT_NO" Visible="False" 
                        VisibleIndex="37">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="AADHAR_NO" Visible="False" 
                        VisibleIndex="38">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="STATUS" Visible="False" VisibleIndex="39">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Marks" FieldName="ITI_MARKS" 
                        VisibleIndex="40">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsPager PageSize="20">
                </SettingsPager>
                <Settings ShowFilterRow="True" />
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                SelectCommand="select * from training_trainee_master v
where v.trade_code LIKE 'I%'">
            </asp:SqlDataSource>
  </div>

    </div>
    </form>
</body>
</html>
