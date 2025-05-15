<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RO_Alloted_Trainee.aspx.cs" Inherits="RO_Alloted_Trainee" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 1386px">
    <form id="form2" runat="server">
    <div>
        <h2>
        <asp:Label ID="Label54" runat="server" Text="ACCEPTANCE OF ALLOTED TRAINEE'S" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </h2>
        </div>
        <div align=center>
            <dx:ASPxGridView ID="ASPxGridView3" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource1" EnableTheming="True" 
                Theme="PlasticBlue" Width="100%">
                <Columns>
                    <dx:GridViewCommandColumn ShowSelectCheckbox="True" VisibleIndex="0" 
                        Caption="Select">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="2" 
                        Caption="Apprentice Name">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="1" 
                        Caption="Apprentice No">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn FieldName="EDUCATION_TYPE" VisibleIndex="3" 
                        Caption="Education Type">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="APPT_REPORTING_DATE" VisibleIndex="4" 
                        Caption="Reporting Date">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataDateColumn FieldName="APPT_ENDING_DATE" VisibleIndex="5" 
                        Caption="Ending Date">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="RO_PBNO" 
                        VisibleIndex="6" Caption="R/O Pbno">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="RO_APPROVAL_STATUS" VisibleIndex="7" 
                        Caption="Approval Status">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle ForeColor="Red" HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                SelectCommand="select APPT_NAME, APPT_NO, EDUCATION_TYPE, APPT_REPORTING_DATE, APPT_ENDING_DATE ,RO_PBNO, RO_APPROVAL_STATUS 
from TRAINING_TRAINEE_MASTER
WHERE instr( RO_PBNO, :user_name) &gt; 0  
AND RO_APPROVAL_STATUS = 'PENDING'">
                <SelectParameters>
                    <asp:SessionParameter Name="user_name" SessionField="user_name" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
</div>
<div align=left>
        <asp:Button ID="Button_Accept_RO" runat="server" BackColor="#FFCC66" 
            ForeColor="#333333" onclick="Button_Accept_RO_Click" 
            style="font-weight: 700; font-size: medium; margin-bottom: 0px; margin-left: 0px;" 
            Text="ACCEPT" Font-Size="Medium" Height="31px" Width="116px" />
            <br />
            <br />
  &nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="Label55" runat="server" Text="ALLOTED TRAINEE'S" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
        <br />
        <br />
            <dx:ASPxGridView ID="ASPxGridView4" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource2" EnableTheming="True" 
                Theme="PlasticBlue" Width="100%">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="1" 
                        Caption="Apprentice Name">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="0" 
                        Caption="Apprentice No" Width="30px">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" 
                        VisibleIndex="2" Caption="Education Type">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Reporting Date" 
                        FieldName="APPT_REPORTING_DATE" VisibleIndex="3">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Ending Date" FieldName="APPT_ENDING_DATE" 
                        VisibleIndex="4">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="RO Pbno" FieldName="RO_PBNO" 
                        VisibleIndex="5">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Approval Status" 
                        FieldName="RO_APPROVAL_STATUS" Visible="False" VisibleIndex="6">
                        <HeaderStyle HorizontalAlign="Center" />
                        <CellStyle HorizontalAlign="Center">
                        </CellStyle>
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                SelectCommand="select APPT_NAME, APPT_NO, EDUCATION_TYPE, APPT_REPORTING_DATE, APPT_ENDING_DATE ,RO_PBNO, RO_APPROVAL_STATUS 
from TRAINING_TRAINEE_MASTER
WHERE instr( RO_PBNO, :user_name) &gt; 0  
AND RO_APPROVAL_STATUS = 'ACCEPTED'">
                <SelectParameters>
                    <asp:SessionParameter Name="user_name" SessionField="user_name" />
                </SelectParameters>
            </asp:SqlDataSource>
  </div>
    </form>
</body>
</html>
