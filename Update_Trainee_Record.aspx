<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Trainee_Record.aspx.cs" Inherits="Update_Trainee_Record" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1386px">
    <form id="form1" runat="server">    
        <br />
         <asp:Label ID="Label1" runat="server" 
            Text="UPDATE RECORDS / CONTRACT DETAILS " Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" 
            style="color: #993333" ></asp:Label>
        <br />
        <br />
    <div align=center>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            Theme="PlasticBlue" Width="60%" style="margin-left: 0px; text-align: center;" 
            EnableTheming="True" Font-Size="Small">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="2" 
                    Caption="Apprentice Name">
                    <Settings AutoFilterCondition="Contains" />
                    <HeaderStyle HorizontalAlign="Center" />
                    <CellStyle HorizontalAlign="Center">
                    </CellStyle>
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataHyperLinkColumn FieldName="APPT_NO" VisibleIndex="1" 
                    Caption="Apprentice No">
                     <Settings AutoFilterCondition="Contains" />
                     <DataItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# "~/Update_Info.aspx?appt_name="+Eval("APPT_NAME","{0}") + "&appt_no="+Eval("APPT_NO","{0}")%>' Text=<%# Eval("APPT_NO")%> ></asp:HyperLink>
                        </DataItemTemplate>
                     <HeaderStyle HorizontalAlign="Center" />
                     <CellStyle HorizontalAlign="Center">
                     </CellStyle>
                 </dx:GridViewDataHyperLinkColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_CONTACT_NO" VisibleIndex="3" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_EMAIL" VisibleIndex="4" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="GENDER" VisibleIndex="5" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOB" VisibleIndex="6" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="TRADE_CODE" VisibleIndex="7" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_DOJ" VisibleIndex="8" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_BANK_ACC_NO" VisibleIndex="9" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="APPT_BANK_IFSC_CODE" VisibleIndex="10" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="PORTAL_REG_NO" 
                    VisibleIndex="11" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PROXIMITY_CARD_NO" VisibleIndex="12" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="CATEGORY" VisibleIndex="13" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DISABILITY" VisibleIndex="14" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_1" VisibleIndex="15" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_2" VisibleIndex="16" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PINCODE" VisibleIndex="17" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="STATE" VisibleIndex="18" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" VisibleIndex="19" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" VisibleIndex="20" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TRADE" VisibleIndex="21" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="OTHER" 
                    VisibleIndex="22" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="BANK_NAME_PORTAL" 
                    VisibleIndex="23" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_HOLDER_NAME_PORTAL" VisibleIndex="24" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn 
                    FieldName="ACC_NO_PORTAL" 
                    VisibleIndex="25" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IFSC_CODE_PORTAL" VisibleIndex="26" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REMARKS" VisibleIndex="27" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DEPT_NO" VisibleIndex="28" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" VisibleIndex="29" 
                    Visible="False">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" VisibleIndex="30" 
                    Visible="False">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_PBNO" VisibleIndex="31" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_NAME" VisibleIndex="32" 
                    Visible="False">
                </dx:GridViewDataTextColumn>
            </Columns>
            <SettingsPager PageSize="20">
            </SettingsPager>
<Settings ShowFilterRow="True" ColumnMinWidth="10"></Settings>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;TRAINING_TRAINEE_MASTER&quot;
order by appt_no asc">
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
