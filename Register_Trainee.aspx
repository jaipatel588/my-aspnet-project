<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register_Trainee.aspx.cs" Inherits="Register_Trainee" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body style="height: 1386px">
    <form id="form1" runat="server">
    <div style="height: 312px">
        <h2>
        <asp:Label ID="Label54" runat="server" Text="REGISTER TRAINEE" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        </h2>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                SelectCommand="select v.*,designation_master_api.get_description('31','NSK',v.emp_category,v.emp_desig) designation,
category_master_api.Get_Category_Desc('31','NSK',v.emp_category) category_desc,
grade_master_api.Get_Description('31','NSK',v.emp_category,v.emp_grade) grade_desc
from ic_mro.employee_information v
where v.emp_category='AT' 
and v.emp_active='TRUE'
and v.date_of_join &gt;= to_date('23-05-2023','dd-mm-yyyy')
order by v.emp_code
">
            </asp:SqlDataSource>
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" Width="100%" EnableTheming="True" 
                Theme="PlasticBlue">

                <Settings ShowFilterRow="True" />

                <Columns>
                    <dx:GridViewDataTextColumn FieldName="COMPANY_CODE" VisibleIndex="0" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataHyperLinkColumn FieldName="EMP_CODE" VisibleIndex="1" 
                        Caption="APPT NO" Width="20px">
                        <Settings AutoFilterCondition="Contains" />
                        <DataItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl='<%# "~/RegisterPage2.aspx?emp_name="+Eval("EMP_NAME","{0}") + "&emp_code="+Eval("EMP_CODE","{0}") + "&emg_contact_no="+Eval("EMG_CONTACT_NO","{0}") + "&e_mail_id="+Eval("E_MAIL_ID","{0}")+ "&emp_sex="+Eval("EMP_SEX","{0}") + "&date_of_birth="+Eval("DATE_OF_BIRTH","{0}") + "&maritial_status="+Eval("MARITIAL_STATUS","{0}") + "&qualification="+Eval("QUALIFICATION","{0}")  + "&date_of_join="+Eval("DATE_OF_JOIN","{0}")  + "&emp_bank_acc_no="+Eval("EMP_BANK_ACC_NO","{0}") + "&dd_payable_at_par="+Eval("DD_PAYABLE_AT_PAR","{0}")%>' Text=<%# Eval("EMP_CODE")%> ></asp:HyperLink>
                        </DataItemTemplate>


                    </dx:GridViewDataHyperLinkColumn>
                    <dx:GridViewDataTextColumn FieldName="PERSON_ID" VisibleIndex="2" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ADDITIONAL_ID" VisibleIndex="3" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_CODE_MERGE" VisibleIndex="4" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ACCESS_CARD_NO" VisibleIndex="5" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_TITLE" VisibleIndex="6" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_FIRST_NAME" VisibleIndex="7" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_MIDDLE_NAME" VisibleIndex="8" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_LAST_NAME" VisibleIndex="9" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PICTURE_ID" VisibleIndex="10" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_F_H_NAME" VisibleIndex="11" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_NAME" VisibleIndex="12" 
                        Caption="NAME">
                        <Settings AutoFilterCondition="Contains" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_SEX" VisibleIndex="13" 
                        Caption="GENDER" Width="20px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMG_CONTACT_NO" VisibleIndex="14" 
                        Caption="CONTACT NO" Width="30px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="E_MAIL_ID" VisibleIndex="15" 
                        Caption="EMAIL ID">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ACTUAL_COST_CENTRE" VisibleIndex="16" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DEPUTED_COST_CENTRE" VisibleIndex="17" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DIRECT_INDIRECT" VisibleIndex="18" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CURRENT_LOCATION" VisibleIndex="19" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="LOCATION_CODE" VisibleIndex="20" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_ACTIVE" VisibleIndex="21" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SUPER_ANNUATE" VisibleIndex="22" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QUALIFICATION" VisibleIndex="23" 
                        Caption="TRADE CODE" Width="20px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MARITIAL_STATUS" VisibleIndex="24" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_CATEGORY" VisibleIndex="25" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_GRADE" VisibleIndex="26" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_DESIG" VisibleIndex="27" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TIME_OFFICE_CODE" VisibleIndex="28" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="COMM_TRUST_CODE" VisibleIndex="29" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_PF_NO" VisibleIndex="30" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_FPF_NO" VisibleIndex="31" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DISPENSARY_CODE" VisibleIndex="32" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_ESI_NO" VisibleIndex="33" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="ESI_IN_DATE" VisibleIndex="34" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="ESI_OUT_DATE" VisibleIndex="35" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="INCREMENT_DATE" VisibleIndex="36" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="STOP_INCREMENT_FLAG" VisibleIndex="37" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NO_OF_CHILDREN" VisibleIndex="38" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="NO_OF_DEPENDENT" VisibleIndex="39" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_OF_BIRTH" VisibleIndex="40" 
                        Caption="DATE OF BIRTH" Width="30px">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_OF_JOIN" VisibleIndex="41" 
                        Caption="JOINING DATE" Width="30px">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_OF_CONFIRM" VisibleIndex="42" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_OF_LEAVE" VisibleIndex="43" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_OF_RETIREMENT" VisibleIndex="44" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="GRATUITY_START_DATE" VisibleIndex="45" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="LAST_PROMOTION_DATE" VisibleIndex="46" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_OF_PRSTART" VisibleIndex="47" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="DATE_OF_PREND" VisibleIndex="48" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="PAYROLL_FLAG" VisibleIndex="49" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="HOLD_SALARY" VisibleIndex="50" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PAYMENT_MODE" VisibleIndex="51" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_BANK_CODE" VisibleIndex="52" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_BANK_ACC_NO" VisibleIndex="53" 
                        Caption="ACCOUNT NO" Width="30px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EMP_REIMB_ACC_NO" VisibleIndex="54" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ISSUE_BANK_CODE" VisibleIndex="55" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="PAN_GIR_NO" VisibleIndex="56" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="GROUP_COST_CENTER_CODE" VisibleIndex="57" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MINIMUM_SALARY_FLAG" VisibleIndex="58" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="MINIMUM_SALARY_AMOUNT" VisibleIndex="59" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="LEASE_ENTITLEMENT" VisibleIndex="60" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CREATED_BY" VisibleIndex="61" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="CREATE_DATE" VisibleIndex="62" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="UPDATED_BY" VisibleIndex="63" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="UPDATE_DATE" VisibleIndex="64" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="ESSENTIAL_SERVICES" VisibleIndex="65" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DD_PAYABLE_AT_PAR" VisibleIndex="66" 
                        Caption="IFSC CODE" Width="20px">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="METHOD_ID" VisibleIndex="67" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="TRANSPORT_MODE" VisibleIndex="68" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="DESTINATION" VisibleIndex="69" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QUARTER_TYPE" VisibleIndex="70" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="QUARTER_NO" VisibleIndex="71" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SEND_PAYSLIP" VisibleIndex="72" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SEND_IT_WORKSHEET" VisibleIndex="73" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="SEND_LEAVE_APPROVAL" VisibleIndex="74" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="CHECK_HOLIDAY" VisibleIndex="75" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="WP_START_DATE" VisibleIndex="76" 
                        Visible="False">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="OBJID" VisibleIndex="77" Visible="False">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="OBJVERSION" VisibleIndex="78" 
                        Visible="False">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <SettingsPager PageSize="30">
                </SettingsPager>

<Settings ShowFilterRow="True"></Settings>

                <SettingsLoadingPanel Delay="0" />

            </dx:ASPxGridView>
                        </p>

        <br />
    
    </div>
    </form>
</body>
</html>
