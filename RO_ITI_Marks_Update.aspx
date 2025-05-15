<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RO_ITI_Marks_Update.aspx.cs" Inherits="RO_ITI_Marks_Update" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
.dxgvControl_PlasticBlue,
.dxgvDisabled_PlasticBlue
{
	border-top: 1px none #CCCCCC;
	border: 1px Solid #CCCCCC;
	font: 12px Tahoma, Geneva, sans-serif;
	background-color: #F0F0F0;
	color: #000000;
	cursor: default;
}
.dxgvTable_PlasticBlue
{
	-webkit-tap-highlight-color: rgba(0,0,0,0);
}

.dxgvTable_PlasticBlue
{
	background-color: #F0F0F0;
	border-width: 0;
	border-collapse: separate!important;
	overflow: hidden;
	color: #000000;
}

.dxgvHeader_PlasticBlue,
.dxgvHeader_PlasticBlue table
{
	color: White;
}
.dxgvHeader_PlasticBlue
{
	cursor: pointer;
	white-space: nowrap;
	padding: 7px 6px;
	border-top: 1px none #2c4182;
	border: 1px solid #2c4182;
<%--	background: #415698 url('<%=WebResource("DevExpress.Web.ASPxThemes.App_Themes.PlasticBlue.GridView.gvHeaderBackground.gif")%>') repeat-x top;
--%>	overflow: hidden;
	font-weight: normal;
	text-align: left;
}

.dxgvHeader_PlasticBlue td
{
	white-space: nowrap;
}
.dxgvDataRow_PlasticBlue
{
	background-color: #FFFFFF;
	color: #000000;
}
.dxgvEditFormDisplayRow_PlasticBlue,
.dxgvDataRow_PlasticBlue,
.dxgvDataRowAlt_PlasticBlue,
.dxgvSelectedRow_PlasticBlue,
.dxgvFocusedRow_PlasticBlue,
.dxgvFocusedRow_PlasticBlue a.dxeHyperlink_PlasticBlue
{
	color: White;
}
.dxgvEditFormDisplayRow_PlasticBlue td.dxgv,
.dxgvDataRow_PlasticBlue td.dxgv,
.dxgvDataRowAlt_PlasticBlue td.dxgv,
.dxgvSelectedRow_PlasticBlue td.dxgv,
.dxgvFocusedRow_PlasticBlue td.dxgv
{
	overflow: hidden;
	border-bottom: 1px solid #d9d9d9;
	border-right: 1px solid #d9d9d9;
	border-top-width: 0;
	border-left-width: 0;
	padding: 4px 6px 5px;
}

.dxgvPagerTopPanel_PlasticBlue,
.dxgvPagerBottomPanel_PlasticBlue
{
	padding: 6px 0;
}

.dxpControl_PlasticBlue
{
	padding: 0px;
}
.dxpControl_PlasticBlue
{
	font: 12px Tahoma, Geneva, sans-serif;
	color: #5A83D0;
}
.dxpSummary_PlasticBlue
{
	color: #909090;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
	padding: 0px 4px;
}
.dxpDisabled_PlasticBlue
{
	color: #B8B8B8;
	border-color: #B8B8B8;
	cursor: default;
}
.dxpDisabledButton_PlasticBlue
{
	text-decoration: none;
}
.dxpButton_PlasticBlue
{
	text-decoration: none;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
}
.dxpCurrentPageNumber_PlasticBlue
{
	color: #FFFFFF;
	background-color: #5066AC;
	font-weight: normal;
	text-decoration: none;
	padding: 2px 3px 3px;
	white-space: nowrap;
}
.dxpPageNumber_PlasticBlue
{
	text-decoration: none;
	text-align: center;
	vertical-align: middle;
	padding: 0px 5px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label55" runat="server" Text="ALLOTED TRAINEE'S" Font-Bold="True" 
            Font-Names="Times New Roman" Font-Size="XX-Large" ForeColor="#0099FF" ></asp:Label>
        <br />
        <br />
            <dx:ASPxGridView ID="ASPxGridView5" runat="server" 
            AutoGenerateColumns="False" DataSourceID="SqlDataSource2" EnableTheming="True" 
            Theme="PlasticBlue">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="APPT_NAME" VisibleIndex="0">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_NO" VisibleIndex="1">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="EDUCATION_TYPE" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_REPORTING_DATE" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="APPT_ENDING_DATE" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="RO_PBNO" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                </Columns>
        </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
                ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
                SelectCommand="SELECT &quot;APPT_NAME&quot;, &quot;APPT_NO&quot;, &quot;EDUCATION_TYPE&quot;, &quot;APPT_REPORTING_DATE&quot;, &quot;APPT_ENDING_DATE&quot;, &quot;RO_PBNO&quot; FROM &quot;TRAINING_TRAINEE_MASTER&quot;
where trade_code LIKE 'I%'">
            </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
