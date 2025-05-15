<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Update_Info.aspx.cs" Inherits="Update_Info" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #800000;
        }
        .style2
        {
            width: 368px;
        }
        .style3
        {
            width: 143px;
        }
        .style4
        {
            width: 237px;
        }
    </style>
</head>
<body style="height: 1386px">
    <form id="form1" runat="server">
    <div style="height: 1325px">
      <table style="width: 100%; height: 100px;">
                <tr>
                    <td class="dxeButtonEditSys">
                        <span class="style11"><strong><span class="style1">DETAILS</span>
                        </strong></span>&nbsp;<hr />
                    </td>
                </tr>
                 <tr>
                    <td class="dxeButtonEditSys">


                        Apprentice Name :
                    </td>
                    <td class="style2">
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="317px" 
                            Enabled="False"></asp:TextBox>
                    </td>
                <%--</tr>
                <tr>--%>
                    <td class="style3">


                        Apprentice Number :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>

                    </td>
                </tr>
                </table>
        <br />
        <dx:ASPxGridView ID="ASPxGridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" Theme="Glass" KeyFieldName="APPT_NO">

<SettingsEditing Mode="PopupEditForm" NewItemRowPosition="Bottom"></SettingsEditing>
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" Caption="Edit">
                    <EditButton Visible="True">
                    </EditButton>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NAME" Visible="False" 
                    VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" Visible="False" VisibleIndex="2">
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
                <dx:GridViewDataTextColumn FieldName="PORTAL_REG_NO" VisibleIndex="12" 
                    Caption="Portal Reg No">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PROXIMITY_CARD_NO" VisibleIndex="13" 
                    Caption="Proximity Card No">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="Category" FieldName="CATEGORY" 
                    VisibleIndex="14">
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="Select" Value="Select" />
                            <dx:ListEditItem Text="OPEN" Value="Open" />
                            <dx:ListEditItem Text="OBC" Value="OBC" />
                            <dx:ListEditItem Text="SC" Value="SC" />
                            <dx:ListEditItem Text="ST" Value="ST" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="Disability" FieldName="DISABILITY" 
                    VisibleIndex="16">
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="NO" Value="NO" />
                            <dx:ListEditItem Text="YES" Value="YES" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_1" VisibleIndex="17" 
                    Caption="Address Line 1">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ADDRESS_LINE_2" VisibleIndex="18" 
                    Caption="Address Line 2">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PINCODE" VisibleIndex="19" 
                    Caption="Pincode">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="State" FieldName="STATE" 
                    VisibleIndex="20">
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="ANDHRA PRADESH" Value="ANDHRA PRADESH" />
                            <dx:ListEditItem Text="ARUNACHAL PRADESH" Value="ARUNACHAL PRADESH" />
                            <dx:ListEditItem Text=" ASSAM" Value=" ASSAM" />
                            <dx:ListEditItem Text="BIHAR" Value="BIHAR" />
                            <dx:ListEditItem Text="CHATTISGARH" Value="CHATTISGARH" />
                            <dx:ListEditItem Text="GOA" Value="GOA" />
                            <dx:ListEditItem Text="GUJRAT" Value="GUJRAT" />
                            <dx:ListEditItem Text="HARYANA" Value="HARYANA" />
                            <dx:ListEditItem Text="HIMACHAL PRADESH" Value="HIMACHAL PRADESH" />
                            <dx:ListEditItem Text="JAMMU KASHMIR" Value="JAMMU KASHMIR" />
                            <dx:ListEditItem Text="JHARKHAND" Value="JHARKHAND" />
                            <dx:ListEditItem Text="KARNATAKA" Value="KARNATAKA" />
                            <dx:ListEditItem Text="KERALA" Value="KERALA" />
                            <dx:ListEditItem Text="MADHYA PRADESH" Value="MADHYA PRADESH" />
                            <dx:ListEditItem Text="MAHARASHTRA" Value="MAHARASHTRA" />
                            <dx:ListEditItem Text="MANIPUR" Value="MANIPUR" />
                            <dx:ListEditItem Text="MEGHALAYA" Value="MEGHALAYA" />
                            <dx:ListEditItem Text="MIZORAM" Value="MIZORAM" />
                            <dx:ListEditItem Text="NAGALAND" Value="NAGALAND" />
                            <dx:ListEditItem Text="ODISHA" Value="ODISHA" />
                            <dx:ListEditItem Text="PUNJAB" Value="PUNJAB" />
                            <dx:ListEditItem Text="RAJASTHAN" Value="RAJASTHAN" />
                            <dx:ListEditItem Text="SIKKIM" Value="SIKKIM" />
                            <dx:ListEditItem Text="TAMIL NADU" Value="TAMIL NADU" />
                            <dx:ListEditItem Text="TELANGANA" Value="TELANGANA" />
                            <dx:ListEditItem Text="TRIPURA" Value="TRIPURA" />
                            <dx:ListEditItem Text="UTTARAKHAND" Value="UTTARAKHAND" />
                            <dx:ListEditItem Text="UTTAR PRADESH" Value="UTTAR PRADESH" />
                            <dx:ListEditItem Text="WEST BENGAL" Value="WEST BENGAL" />
                            <dx:ListEditItem Text="ANDAMAN NICOBAR" Value="ANDAMAN NICOBAR" />
                            <dx:ListEditItem Text="CHANDIGARH" Value="CHANDIGARH" />
                            <dx:ListEditItem Text="DADRA NAGAR HAVELI, DAMAN DIU" 
                                Value="DADRA NAGAR HAVELI, DAMAN DIU, DELHI (NCT)" />
                            <dx:ListEditItem Text="LAKSHADEEP " Value="LAKSHADEEP PUDUCHERRY" />
                            <dx:ListEditItem Text="LADAKH" Value="LADAKH" />
                            <dx:ListEditItem Text="DELHI (NCT)" Value="DELHI (NCT)" />
                            <dx:ListEditItem Text="PUDUCHERRY" Value="PUDUCHERRY" />
                        </Items>
                    </PropertiesComboBox>
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" Visible="False" 
                    VisibleIndex="21">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" Visible="False" 
                    VisibleIndex="22">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EDUCATION_TRADE" Visible="False" 
                    VisibleIndex="23">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="OTHER" Visible="False" VisibleIndex="24">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BANK_NAME_PORTAL" VisibleIndex="25" 
                    Caption="Bank Name on Portal" 
                    Visible="False">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_HOLDER_NAME_PORTAL" VisibleIndex="26" 
                    Caption="Acc Holder Name on Portal" 
                    Visible="False">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_NO_PORTAL" VisibleIndex="28" 
                    Caption="Bank Acc No on Portal" 
                    Visible="False">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IFSC_CODE_PORTAL" VisibleIndex="29" 
                    Caption="IFSC Code on Portal" 
                    Visible="False">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="REMARKS" VisibleIndex="37" 
                    Caption="Remarks">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="DEPT_NO" Visible="False" 
                    VisibleIndex="30">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_FROM" Visible="False" 
                    VisibleIndex="31">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn FieldName="DEPT_JOINING_TO" Visible="False" 
                    VisibleIndex="32">
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="RO_PBNO" Visible="False" 
                    VisibleIndex="33">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="RO_NAME" Visible="False" 
                    VisibleIndex="34">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataDateColumn Caption="Reporting Date" 
                    FieldName="APPT_REPORTING_DATE" VisibleIndex="35">
                    <PropertiesDateEdit DisplayFormatString="">
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn Caption="Ending Date" FieldName="APPT_ENDING_DATE" 
                    VisibleIndex="36">
                    <PropertiesDateEdit DisplayFormatString="">
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataDateColumn Caption="Date Of Birth" FieldName="DATE_OF_BIRTH" 
                    VisibleIndex="27">
                    <PropertiesDateEdit DisplayFormatString="">
                    </PropertiesDateEdit>
                </dx:GridViewDataDateColumn>
                <dx:GridViewDataTextColumn FieldName="MARKS" 
                    VisibleIndex="38" Visible="False">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="EMERGENCY_CONTACT_NO" 
                    VisibleIndex="15" Caption="Emer Contact No">
                    <HeaderStyle Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="AADHAR_NO" VisibleIndex="11" 
                    Caption="Aadhar No">
                    <HeaderStyle HorizontalAlign="Center" Wrap="True" />
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="Status" FieldName="STATUS" 
                    VisibleIndex="39">
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="Active" Value="Active" />
                            <dx:ListEditItem Text="Inactive" Value="Inactive" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
            </Columns>

            <SettingsPopup>
                <EditForm MinWidth="900px" HorizontalAlign="LeftSides" MinHeight="200px" 
                    VerticalAlign="WindowCenter" />
                <CustomizationWindow Width="600px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </SettingsPopup>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT * FROM &quot;TRAINING_TRAINEE_MASTER&quot;
where appt_no = :appt_no" UpdateCommand="update training_trainee_master v
set v.portal_reg_no = :portal_reg_no, v.proximity_card_no = :proximity_card_no, 
    v.category = :category, v.education_type = :education_type, v.education_trade = :education_trade,
    v.address_line_1 = :address_line_1, v.address_line_2 = :address_line_2,
    v.pincode = :pincode, v.state = :state,
    v.passout_year = :passout_year, v.appt_reporting_date = :appt_reporting_date,
    v.appt_ending_date = :appt_ending_date, v.date_of_birth = :date_of_birth,
    v.bank_name_portal = :bank_name_portal, v.acc_holder_name_portal = :acc_holder_name_portal,
    v.acc_no_portal = :acc_no_portal, v.ifsc_code_portal = :ifsc_code_portal,
    v.remarks = :remarks, v.aadhar_no = :aadhar_no, v.status = :status,
    v.disability = :disability, v.emergency_contact_no = :emergency_contact_no
where v.appt_no = :appt_no ">
            <SelectParameters>
                <asp:QueryStringParameter Name="appt_no" QueryStringField="appt_no" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="portal_reg_no" />
                <asp:Parameter Name="proximity_card_no" />
                <asp:Parameter Name="category" />
                <asp:Parameter Name="education_type" />
                <asp:Parameter Name="education_trade" />
                <asp:Parameter Name="address_line_1" />
                <asp:Parameter Name="address_line_2" />
                <asp:Parameter Name="pincode" />
                <asp:Parameter Name="state" />
                <asp:Parameter Name="passout_year" />
                <asp:Parameter Name="appt_reporting_date" />
                <asp:Parameter Name="appt_ending_date" />
                <asp:Parameter Name="date_of_birth" />
                <asp:Parameter Name="bank_name_portal" />
                <asp:Parameter Name="acc_holder_name_portal" />
                <asp:Parameter Name="acc_no_portal" />
                <asp:Parameter Name="ifsc_code_portal" />
                <asp:Parameter Name="remarks" />
                <asp:Parameter Name="aadhar_no" />
                <asp:QueryStringParameter Name="appt_no" QueryStringField="appt_no" />
                <asp:Parameter Name="status" />
                <asp:Parameter Name="disability" />
                <asp:Parameter Name="emergency_contact_no" />
            </UpdateParameters>
        </asp:SqlDataSource>
      <br /><table style="width: 27%; height: 40px;">
                <tr>
                    <td class="dxeButtonEditSys">
                        <span class="style11"><strong><span class="style1">EDUCATION DETAILS UPDATE</span>
                        </strong></span>&nbsp;</td>
                </tr>
                </table>
               
        <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource3" Theme="Glass" KeyFieldName="APPT_NO">

<SettingsEditing Mode="PopupEditForm" NewItemRowPosition="Bottom"></SettingsEditing>
            <Columns>
                <dx:GridViewCommandColumn Caption="Edit" VisibleIndex="0">
                    <EditButton Visible="True">
                    </EditButton>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" Visible="False" 
                    VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="Education Type" 
                    FieldName="EDUCATION_TYPE" VisibleIndex="2">
                    <PropertiesComboBox DropDownStyle="DropDown" LoadDropDownOnDemand="True">
                        <Items>
                            <dx:ListEditItem Text="Select" Value="Select" />
                            <dx:ListEditItem Text="Engg Graduate" Value="Engg Graduate" />
                            <dx:ListEditItem Text="Diploma" Value="Diploma" />
                            <dx:ListEditItem Text="ITI" Value="ITI" />
                            <dx:ListEditItem Text="Non Tech Graduate" Value="Non Tech Graduate" />
                            <dx:ListEditItem Text="Other" Value="Other" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataComboBoxColumn Caption="Education Trade" VisibleIndex="3" FieldName="EDUCATION_TRADE">
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="--------------------------Engg Graduate--------------------------" 
                                Value="Engg Graduate" />
                            <dx:ListEditItem Text="Aeronautical" Value="Aeronautical" />
                            <dx:ListEditItem Text="Elelctronics" Value="Elelctronics" />
                            <dx:ListEditItem Text="Electrical" Value="Electrical" />
                            <dx:ListEditItem Text="Mechanical" Value="Mechanical" />
                            <dx:ListEditItem Text="Civil" Value="Civil" />
                            <dx:ListEditItem Text="Chemical" Value="Chemical" />
                            <dx:ListEditItem Text="Computer Science &amp; Engg" 
                                Value="Computer Science &amp; Engg" />
                            <dx:ListEditItem Text="Pharmacy" Value="Pharmacy" />
                            <dx:ListEditItem Text="Elelctronics &amp; Communication" 
                                Value="Elelctronics &amp; Communication" />
                            <dx:ListEditItem Text="Elelctronics &amp; Telecommunication" 
                                Value="Elelctronics &amp; Telecommunication" />
                            <dx:ListEditItem Text="Information Technology" Value="Information Technology" />
                            <dx:ListEditItem Text="Computer" Value="Computer" />
                            <dx:ListEditItem Text="Production" Value="Production" />
                            <dx:ListEditItem Text="-------------------------------Diploma-------------------------------" 
                                Value="Diploma" />
                            <dx:ListEditItem Text="Elelctronics" Value="Elelctronics" />
                            <dx:ListEditItem Text="Hotel Management" Value="Hotel Management" />
                            <dx:ListEditItem Text="Nursing Assitant" Value="Nursing Assitant" />
                            <dx:ListEditItem Text="Medical Laboratory Technician" 
                                Value="Medical Laboratory Technician" />
                            <dx:ListEditItem Text="Medical Lab Assistant" Value="Medical Lab Assistant" />
                            <dx:ListEditItem Text="Elelctronics &amp; Communication" 
                                Value="Elelctronics &amp; Communication" />
                            <dx:ListEditItem Text="Elelctronics &amp; Telecommunication" 
                                Value="Elelctronics &amp; Telecommunication" />
                            <dx:ListEditItem Text="Information Technology" Value="Information Technology" />
                            <dx:ListEditItem Text="Computer Science &amp; Engg" 
                                Value="Computer Science &amp; Engg" />
                            <dx:ListEditItem Text="Computer" Value="Computer" />
                            <dx:ListEditItem Text="Chemical" Value="Chemical" />
                            <dx:ListEditItem Text="Production" Value="Production" />
                            <dx:ListEditItem Text="Civil" Value="Civil" />
                            <dx:ListEditItem Text="Electrical" Value="Electrical" />
                            <dx:ListEditItem Text="Mechanical" Value="Mechanical" />
                            <dx:ListEditItem Text="Aeronautical" Value="Aeronautical" />
                            <dx:ListEditItem Text="----------------------------------ITI---------------------------------" 
                                Value="ITI" />
                            <dx:ListEditItem Text="Fitter" Value="Fitter" />
                            <dx:ListEditItem Text="Turner" Value="Turner" />
                            <dx:ListEditItem Text="Electronics Mechanic" Value="Electronics Mechanic" />
                            <dx:ListEditItem Text="Machinist" Value="Machinist" />
                            <dx:ListEditItem Text="Welder (Gas and Electric)" 
                                Value="Welder (Gas and Electric)" />
                            <dx:ListEditItem Text="Tool and Die Maker (Dies and Moulds)" 
                                Value="Tool and Die Maker (Dies and Moulds)" />
                            <dx:ListEditItem Text="Tool and Die Maker (Press Tools, Jigs and Fixtures)" 
                                Value="Tool and Die Maker (Press Tools, Jigs and Fixtures)" />
                            <dx:ListEditItem Text="Stenographer (English)" Value="Stenographer (English)" />
                            <dx:ListEditItem Text="Sheet Metal Worker" Value="Sheet Metal Worker" />
                            <dx:ListEditItem Text="Mechanic Refrigeration and Air Conditioning" 
                                Value="Mechanic Refrigeration and Air Conditioning" />
                            <dx:ListEditItem Text="Painter (General)" Value="Painter (General)" />
                            <dx:ListEditItem Text="Mechanic (Motor Vehicle)" 
                                Value="Mechanic (Motor Vehicle)" />
                            <dx:ListEditItem Text="Machinist (Grinder)" Value="Machinist (Grinder)" />
                            <dx:ListEditItem Text="Carpenter" Value="Carpenter" />
                            <dx:ListEditItem Text="Draughtsman (Mechanical)" 
                                Value="Draughtsman (Mechanical)" />
                            <dx:ListEditItem Text="Computer Operator and Programming Assistant" 
                                Value="Computer Operator and Programming Assistant" />
                            <dx:ListEditItem Text="Electrician" Value="Electrician" />
                            <dx:ListEditItem Text="-----------------------Non-Tech Graduate-----------------------" 
                                Value="Non-Tech Graduate" />
                            <dx:ListEditItem Text="Industrial Trainee (Finance)" 
                                Value="Industrial Trainee (Finance)" />
                            <dx:ListEditItem Text="Business Administration" 
                                Value="Business Administration" />
                            <dx:ListEditItem Text="Science" Value="Science" />
                            <dx:ListEditItem Text="Arts" Value="Arts" />
                            <dx:ListEditItem Text="Commerce" Value="Commerce" />
                        </Items>
                        <ItemStyle BackColor="White" />
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn FieldName="PASSOUT_YEAR" VisibleIndex="4" 
                    Caption="Passout Year">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn Caption="Percentage" FieldName="MARKS" 
                    VisibleIndex="5">
                </dx:GridViewDataTextColumn>
            </Columns>

            <SettingsPopup>
                <EditForm MinWidth="550px" HorizontalAlign="LeftSides" MinHeight="100px" 
                    VerticalAlign="WindowCenter" />
                <CustomizationWindow Width="200px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </SettingsPopup>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT APPT_NO,EDUCATION_TYPE,EDUCATION_TRADE,PASSOUT_YEAR,MARKS
FROM TRAINING_TRAINEE_MASTER
WHERE APPT_NO = :APPT_NO" UpdateCommand="update training_trainee_master v
set v.education_type = :education_type, 
    v.education_trade = :education_trade,
    v.passout_year = :passout_year,
    v.marks = :marks
where v.appt_no = :appt_no 
">
            <SelectParameters>
                <asp:QueryStringParameter Name="APPT_NO" QueryStringField="appt_no" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="education_type" />
                <asp:Parameter Name="education_trade" />
                <asp:Parameter Name="passout_year" />
                <asp:QueryStringParameter Name="appt_no" QueryStringField="appt_no" />
                <asp:Parameter Name="marks" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
      <table style="width: 17%; height: 40px;">
                <tr>
                    <td class="style4">
      <table style="width: 166%; height: 43px;">
                <tr>
                    <td class="dxeButtonEditSys">
                        <span class="style11"><strong><span class="style1">BANK DETAILS UPDATE</span>
                        </strong></span>&nbsp;</td>
                </tr>
                </table>
                    </td>
                </tr>
                </table>
               
        <dx:ASPxGridView ID="ASPxGridView5" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource4" Theme="Glass" KeyFieldName="APPT_NO">

<SettingsEditing Mode="PopupEditForm" NewItemRowPosition="Bottom"></SettingsEditing>
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" Caption="Edit">
                    <EditButton Visible="True">
                    </EditButton>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" Visible="False" 
                    VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="BANK_NAME_PORTAL" 
                    VisibleIndex="2" Caption="Bank Name On Portal">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_HOLDER_NAME_PORTAL" VisibleIndex="3" 
                    Caption="Acc Holder Name On Portal">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="ACC_NO_PORTAL" VisibleIndex="4" 
                    Caption="Acc No On Portal">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataTextColumn FieldName="IFSC_CODE_PORTAL" VisibleIndex="5" 
                    Caption="IFSC Code On Portal">
                </dx:GridViewDataTextColumn>
            </Columns>

            <SettingsPopup>
                <EditForm MinWidth="550px" HorizontalAlign="LeftSides" MinHeight="100px" 
                    VerticalAlign="WindowCenter" />
                <CustomizationWindow Width="200px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </SettingsPopup>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT APPT_NO,bank_name_portal,acc_holder_name_portal,acc_no_portal,ifsc_code_portal FROM TRAINING_TRAINEE_MASTER
WHERE APPT_NO = :APPT_NO" UpdateCommand="update training_trainee_master v
set v.bank_name_portal = :bank_name_portal, 
    v.acc_holder_name_portal = :acc_holder_name_portal,
    v.acc_no_portal = :acc_no_portal,
    v.ifsc_code_portal = :ifsc_code_portal 
where v.appt_no = :appt_no ">
            <SelectParameters>
                <asp:QueryStringParameter Name="APPT_NO" QueryStringField="appt_no" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="bank_name_portal" />
                <asp:Parameter Name="acc_holder_name_portal" />
                <asp:Parameter Name="acc_no_portal" />
                <asp:Parameter Name="ifsc_code_portal" />
                <asp:QueryStringParameter Name="appt_no" QueryStringField="appt_no" />
            </UpdateParameters>
        </asp:SqlDataSource>
    &nbsp;&nbsp;&nbsp;<table style="width: 29%; height: 46px;">
                <tr>
                    <td class="dxeButtonEditSys">
                        <span class="style11"><strong><span class="style1">CONTRACT DETAILS UPDATE</span></strong></span>&nbsp;</td>
                </tr>
                </table>
        <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2" Theme="Glass" KeyFieldName="APPT_NO">

<SettingsEditing Mode="PopupEditForm" NewItemRowPosition="Bottom"></SettingsEditing>
            <Columns>
                <dx:GridViewCommandColumn VisibleIndex="0" Caption="Edit">
                    <EditButton Visible="True">
                    </EditButton>
                </dx:GridViewCommandColumn>
                <dx:GridViewDataTextColumn FieldName="APPT_NO" Visible="False" 
                    VisibleIndex="1">
                </dx:GridViewDataTextColumn>
                <dx:GridViewDataComboBoxColumn Caption="Contract Generated" 
                    FieldName="CONTRACT_GENERATED" VisibleIndex="2">
                    <PropertiesComboBox>
                        <Items>
                            <dx:ListEditItem Text="NO" Value="NO" />
                            <dx:ListEditItem Text="YES" Value="YES" />
                        </Items>
                    </PropertiesComboBox>
                </dx:GridViewDataComboBoxColumn>
                <dx:GridViewDataTextColumn Caption="Contract No" FieldName="CONTRACT_NO" 
                    VisibleIndex="3">
                </dx:GridViewDataTextColumn>
            </Columns>

            <SettingsPopup>
                <EditForm MinWidth="550px" HorizontalAlign="LeftSides" MinHeight="100px" 
                    VerticalAlign="WindowCenter" />
                <CustomizationWindow Width="200px" HorizontalAlign="Center" 
                    VerticalAlign="Middle" />
            </SettingsPopup>
        </dx:ASPxGridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT APPT_NO,CONTRACT_GENERATED,CONTRACT_NO FROM TRAINING_TRAINEE_MASTER
WHERE APPT_NO = :APPT_NO" UpdateCommand="update training_trainee_master v
set v.contract_generated = :contract_generated, v.contract_no = :contract_no 
where v.appt_no = :appt_no ">
            <SelectParameters>
                <asp:QueryStringParameter Name="APPT_NO" QueryStringField="appt_no" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="contract_generated" />
                <asp:Parameter Name="contract_no" />
                <asp:QueryStringParameter Name="appt_no" QueryStringField="appt_no" />
            </UpdateParameters>
        </asp:SqlDataSource>
                <br />
                        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                            
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT DISTINCT EDUCATION_TRADE
FROM TRAINING_EDUCATION_DETAILS
order by EDUCATION_TRADE"></asp:SqlDataSource>

                </div>
<div>

</div>
    </form>
    </form>
</body>
</html>
