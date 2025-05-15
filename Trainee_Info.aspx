<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Trainee_Info.aspx.cs" Inherits="Trainee_Info" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style11
        {
            color: #990000;
            font-size: large;
        }
        .style8
        {
            width: 331px;
            text-align: left;
        }
        .style7
        {
            width: 124px;
        }
        .style12
        {
            width: 331px;
        }
        .style14
        {
            width: 375px;
        }
        .dxeTrackBar, 
.dxeIRadioButton, 
.dxeButtonEdit, 
.dxeTextBox, 
.dxeRadioButtonList, 
.dxeCheckBoxList, 
.dxeMemo, 
.dxeListBox, 
.dxeCalendar, 
.dxeColorTable
{
	-webkit-tap-highlight-color: rgba(0,0,0,0);
}

.dxeTextBox,
.dxeButtonEdit,
.dxeIRadioButton,
.dxeRadioButtonList,
.dxeCheckBoxList
{
    cursor: default;
}

.dxeButtonEdit
{
	background-color: white;
	border: 1px solid #9F9F9F;
}

.dxeButtonEditSys 
{
    width: 170px;
}

.dxeButtonEdit .dxeEditArea
{
	background-color: white;
}

.dxeEditArea
{
	font: 12px Tahoma, Geneva, sans-serif;
	border: 1px solid #A0A0A0;
}
.dxeEditAreaSys 
{
    height: 14px;
    line-height: 14px;
    border: 0px!important;
	padding: 0px 1px 0px 0px; /* B146658 */
    background-position: 0 0; /* iOS Safari */
}
.dxeButtonEditButton,
.dxeSpinIncButton,
.dxeSpinDecButton,
.dxeSpinLargeIncButton,
<%--.dxeSpinLargeDecButton
{
	padding: 0px 2px 0px 3px;
	background: #e6e6e6 url('<%=WebResource("DevExpress.Web.Images.Editors.edtDropDownBack.gif")%>') repeat-x top;
}--%>
.dxeButtonEditButton,
.dxeCalendarButton,
.dxeSpinIncButton,
.dxeSpinDecButton,
.dxeSpinLargeIncButton,
.dxeSpinLargeDecButton
{
	vertical-align: middle;
	border: 1px solid #7f7f7f;
	cursor: pointer;
} 

.dxEditors_edtDropDown {
    background-position: -95px 0px;
    width: 10px;
    height: 14px;
}

.dxEditors_edtError,
.dxEditors_edtCalendarPrevYear,
.dxEditors_edtCalendarPrevYearDisabled,
.dxEditors_edtCalendarPrevMonth,
.dxEditors_edtCalendarPrevMonthDisabled,
.dxEditors_edtCalendarNextMonth,
.dxEditors_edtCalendarNextMonthDisabled,
.dxEditors_edtCalendarNextYear,
.dxEditors_edtCalendarNextYearDisabled,
.dxEditors_edtCalendarFNPrevYear,
.dxEditors_edtCalendarFNNextYear,
.dxEditors_edtEllipsis,
.dxEditors_edtEllipsisDisabled,
.dxEditors_edtDropDown,
.dxEditors_edtDropDownDisabled,
.dxEditors_edtSpinEditIncrementImage,
.dxEditors_edtSpinEditIncrementImageDisabled,
.dxEditors_edtSpinEditDecrementImage,
.dxEditors_edtSpinEditDecrementImageDisabled,
.dxEditors_edtSpinEditLargeIncImage,
.dxEditors_edtSpinEditLargeIncImageDisabled,
.dxEditors_edtSpinEditLargeDecImage,
.dxEditors_edtSpinEditLargeDecImageDisabled
{
	display:block;
	margin:auto;
}

.dxEditors_edtError,
.dxEditors_edtCalendarPrevYear,
.dxEditors_edtCalendarPrevYearDisabled,
.dxEditors_edtCalendarPrevMonth,
.dxEditors_edtCalendarPrevMonthDisabled,
.dxEditors_edtCalendarNextMonth,
.dxEditors_edtCalendarNextMonthDisabled,
.dxEditors_edtCalendarNextYear,
.dxEditors_edtCalendarNextYearDisabled,
.dxEditors_edtCalendarFNPrevYear,
.dxEditors_edtCalendarFNNextYear,
.dxEditors_edtRadioButtonChecked,
.dxEditors_edtRadioButtonUnchecked,
.dxEditors_edtRadioButtonCheckedDisabled,
.dxEditors_edtRadioButtonUncheckedDisabled,
.dxEditors_edtEllipsis,
.dxEditors_edtEllipsisDisabled,
.dxEditors_edtDropDown,
.dxEditors_edtDropDownDisabled,
.dxEditors_edtDETSClockFace,
.dxEditors_edtDETSHourHand,
.dxEditors_edtDETSMinuteHand,
.dxEditors_edtDETSSecondHand,
.dxEditors_edtSpinEditIncrementImage,
.dxEditors_edtSpinEditIncrementImageDisabled,
.dxEditors_edtSpinEditDecrementImage,
.dxEditors_edtSpinEditDecrementImageDisabled,
.dxEditors_edtSpinEditLargeIncImage,
.dxEditors_edtSpinEditLargeIncImageDisabled,
.dxEditors_edtSpinEditLargeDecImage,
.dxEditors_edtSpinEditLargeDecImageDisabled,
.dxEditors_fcadd,
.dxEditors_fcaddhot,
.dxEditors_fcremove,
.dxEditors_fcremovehot,
.dxEditors_fcgroupaddcondition,
.dxEditors_fcgroupaddgroup,
.dxEditors_fcgroupremove,
.dxEditors_fcopany,
.dxEditors_fcopbegin,
.dxEditors_fcopbetween,
.dxEditors_fcopcontain,
.dxEditors_fcopnotcontain,
.dxEditors_fcopnotequal,
.dxEditors_fcopend,
.dxEditors_fcopequal,
.dxEditors_fcopgreater,
.dxEditors_fcopgreaterorequal,
.dxEditors_fcopnotblank,
.dxEditors_fcopblank,
.dxEditors_fcopless,
.dxEditors_fcoplessorequal,
.dxEditors_fcoplike,
.dxEditors_fcopnotany,
.dxEditors_fcopnotbetween,
.dxEditors_fcopnotlike,
.dxEditors_fcgroupand,
.dxEditors_fcgroupor,
.dxEditors_fcgroupnotand,
.dxEditors_fcgroupnotor,
.dxEditors_caRefresh,
.dxEditors_edtTBDecBtn,
.dxEditors_edtTBIncBtn,
.dxEditors_edtTBMainDH,
.dxEditors_edtTBSecondaryDH,
.dxEditors_edtTBIncBtnDisabled,
.dxEditors_edtTBDecBtnDisabled,
.dxEditors_edtTBMainDHDisabled,
<%--.dxEditors_edtTBSecondaryDHDisabled
{
    background-image: url('<%=WebResource("DevExpress.Web.Images.Editors.sprite.png")%>');
    background-repeat: no-repeat;
    background-color: transparent;
}
--%>
        .style5
        {
            width: 277px;
        }
        .style15
        {
            color: #800000;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 1325px">
      <table style="width: 100%; height: 100px;">
                <tr>
                    <td class="style12">
                        <span class="style11"><strong>DETAILS
                        </strong></span>&nbsp;<hr />
                    </td>
                </tr>
                 <tr>
                    <td class="style8">


                        Apprentice Name :
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="317px"></asp:TextBox>
                    </td>
                <%--</tr>
                <tr>--%>
                    <td class="style14">


                        Apprentice Number :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td class="style12">


                        Apprentice Contact Number :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                    </td>
                <%--</tr>
                 <tr>--%>
                    <td class="style14">


                        Apprentice Email Id :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" Width="328px"></asp:TextBox>

                    </td>
                </tr>
                      <tr>
                    <td class="style12">


                        Gender :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                          </td><%--</tr>

          <tr>--%>
                    <td class="style14">


                        Date Of Birth :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" Width="65px"></asp:TextBox>

                          </td></tr>
          <tr>
                    <td class="style12">


                        Trade Code :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                    </td>
       
                    <td class="style14">

                        Date Of Joining HAL :</td>
                    <td class="style7">
        <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 0px" Width="65px"></asp:TextBox>

                          </td></tr>
         <tr>
                    <td class="style12">

                        Bank Account Number :
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                          </td>
                        
                    <td class="style14">

                        Bank IFSC Code :
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 0px"></asp:TextBox>

                             </td></tr>
                        <tr>
                            <td class="style13">
                                <strong>
                                <br class="style15" />
                                <span class="style15">PERSONAL DETAILS</span></strong></td>
                </tr>
                        </tr>
                       
                        <tr>
                            <td class="style12">
                                <span class="style2"><hr />
                                </span></td>
                </tr>
                        </tr>
                          <tr>
                    <td class="style12">
        <asp:Label ID="Label1" runat="server" Text="Portal Registration No. :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                             </td>
                    <td class="style14">


        <asp:Label ID="Label2" runat="server" Text="Proximity Card No. :"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox15" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                                  </td>
                              <tr>
                    <td class="style12">
        <asp:Label ID="Label13" runat="server" Text="Category :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox24" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                    </td>  
                    
                    <td class="style14">
        <asp:Label ID="Label25" runat="server" Text="Disability (Divyang) :"></asp:Label>
                    </td>
                    <td>
        <asp:TextBox ID="TextBox25" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                    </td></tr>                        
                <tr>
                    <td>Date Of Joining HAL :</td>
                    <td>
        <asp:TextBox ID="TextBox33" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                    </td>
                    <td>Date Of Ending HAL :</td>
                    <td>
        <asp:TextBox ID="TextBox34" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                    </td>
                    </tr>
                <tr>
                    <td>Date Of&nbsp; Birth :</td>
                    <td>
        <asp:TextBox ID="TextBox35" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                    </td>
                    <td class="style5">
        <asp:Label ID="Label3" runat="server" Text="Emergency Contact No. :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox32" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                             </td>
                    </tr>
                <tr>
                    <td class="style12">Aadhar No. :</td>
                    <td class="style12">
        <asp:TextBox ID="TextBox37" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        <span class="style9"><strong>
                        <br />
                        <span class="style15">ADDRESS DETAILS</span></strong></span>
                        <hr />
                    </td>
                </tr>

                    </td>
                
                <tr>
                    <td class="style12">
        <asp:Label ID="Label14" runat="server" Text="Address Line 1 :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox12" runat="server" style="margin-left: 0px" Width="315px"></asp:TextBox>

                             </td>
                    <td class="style14">


        <asp:Label ID="Label15" runat="server" Text="Address Line 2 :"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox13" runat="server" style="margin-left: 0px" Width="330px"></asp:TextBox>

                                  </td>
                              <tr>
                    <td class="style12">
        <asp:Label ID="Label16" runat="server" Text="Pincode :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox14" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>

                                  </td>
    
                    <td class="style14">
        <asp:Label ID="Label17" runat="server" Text="State  :"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox26" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

               </td>
               <tr>
                    <td class="style12">
                        <span class="style10"><strong>
                        <br />
                        <span class="style15">EDUCATIONAL DETAILS</span></strong></span><hr />
                    </td>
                </tr>
                             
                 <tr>
                    <td class="style12">
        <asp:Label ID="Label21" runat="server" Text="Education Type :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox27" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                             </td>
                    <td class="style14">


<asp:Label ID="Label23" runat="server" Text="Passout Year :"></asp:Label>
                    </td>
                    <td class="style3">

        <asp:TextBox ID="TextBox18" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>

                                  </td>
              <tr>
              <td class="style12">


        <asp:Label ID="Label22" runat="server" Text="Eduaction Trade :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox28" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

</td>
                    <td class="style14">
<asp:Label ID="Label61" runat="server" Text="Other Trade :" Visible="False"></asp:Label>
                    </td>
                    <td class="style3">

        <asp:TextBox ID="TextBox17" runat="server" style="margin-left: 0px" Width="326px" 
                            Visible="False"></asp:TextBox>

                        <br />

                    </td>
                </tr>     

                <tr>
            <td class="style5">


                        Academic Marks / Score :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox36" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>

                        <br />

                    </td>
                </tr>

            <tr>
                    <td class="style12">
                        <span class="style10"><strong>
                        <br class="style15" />
                        <span class="style15">BANK DETAILS ON PORTAL</span></strong></span><hr />
                    </td>
                </tr>

                              <tr>
                    <td class="style12">


                        Bank Name :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox19" runat="server" style="margin-left: 0px" Width="314px"></asp:TextBox>

                        <br />

                    </td>
                    <td class="style14">


        <asp:Label ID="Label60" runat="server" Text="Account Holder Name : "></asp:Label>
                                  </td>
                                                 <td class="style3">

        <asp:TextBox ID="TextBox20" runat="server" style="margin-left: 0px" Width="329px"></asp:TextBox>

                              <tr>
                    <td class="style12">


                        Account Number :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox21" runat="server" style="margin-left: 0px" Width="168px"></asp:TextBox>

                        <br />

                    </td>
                    <td class="style14">
                        IFSC Code :</td>
                         <td class="style3">

        <asp:TextBox ID="TextBox22" runat="server" style="margin-left: 0px" Width="107px"></asp:TextBox>
                                  <tr>
                                              <td class="style12">
                                                  <span class="style10"><strong>
                                                  <br class="style15" />
                                                  <span class="style15">ADD REMARKS</span></strong></span><hr />
                    </td>
              <tr>
                    <td class="style12">


        <asp:Label ID="Label27" runat="server" Text="Remark if any :"></asp:Label>
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox23" runat="server" style="margin-left: 0px" Width="317px"></asp:TextBox>

                        <br />
                        </td>
                        <td>
                            Status :
                        </td>
     <%--   <asp:Label ID="Label4" runat="server" Text="Status :"></asp:Label>
     --%>               </td>
                    <td>

        <asp:TextBox ID="TextBox38" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>

                    </td>
                                  <tr>
                    <td class="style12">
                        <span class="style10"><strong>
                        <br class="style15" />
                        <span class="style15">DEPARTMENT DETAILS </span> </strong></span><hr />
                    </td>
                </tr>

                              <tr>
                    <td class="style12">


                        Dept No. :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox16" runat="server" style="margin-left: 0px" Width="69px"></asp:TextBox>

                        <br />

                    </td>
                    <td class="style14">


                        Department Joining Date :</td>
                                                 <td class="style3">

        <asp:TextBox ID="TextBox29" runat="server" style="margin-left: 0px" Width="65px"></asp:TextBox>

                              <tr>
                    <td class="style12">


                        R/O Pbno. &amp; Name :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox30" runat="server" style="margin-left: 0px" Width="317px"></asp:TextBox>

                        <br />

                    </td>
                    </table>
         <br />
         <br />
    </div>
    </form>
    
</body>
</html>
