<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegisterPage2.aspx.cs" Inherits="RegisterPage2" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            color: #FF0000;
            font-size: large;
        }
        .style3
        {
            width: 232px;
        }
        .style5
        {
            width: 277px;
        }
        .style6
        {
            width: 190px;
        }
        .style7
        {
            width: 124px;
        }
        .style8
        {
            width: 277px;
            text-align: left;
        }
        .style9
        {
            font-size: medium;
            color: #990000;
        }
        .style10
        {
            color: #990000;
        }
        .style11
        {
            color: #990000;
            font-size: large;
        }
        .style12
        {
            height: 23px;
        }
        </style>
</head>
<body style="height: 1277px">
    <form id="form1" runat="server">
    <div style="height: 1036px">
      <table style="width: 100%; height: 100px;">
                <tr>
                    <td class="style5">
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
                    <td class="style5">


                        Apprentice Number :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                    </td>
                </tr>
                 <tr>
                    <td class="style5">


                        Apprentice Contact Number :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                    </td>
                <%--</tr>
                 <tr>--%>
                    <td class="style5">


                        Apprentice Email Id :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" Width="328px"></asp:TextBox>

                    </td>
                </tr>
                      <tr>
                    <td class="style5">


                        Gender :
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                          </td><%--</tr>

          <tr>--%>
                    <td class="style5">


                        Date Of Birth :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" Width="65px"></asp:TextBox>

                          </td></tr>
          <tr>
                    <td class="style5">


                        Trade Code :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                    </td>
       
                    <td class="style5">

                        Date Of Joining HAL :</td>
                    <td class="style7">
        <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 0px" Width="65px"></asp:TextBox>

                          </td></tr>
         <tr>
                    <td class="style5">

                        Bank Account Number :
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 0px" Width="125px"></asp:TextBox>

                          </td>
                        
                    <td class="style5">

                        Bank IFSC Code :
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 0px"></asp:TextBox>

                             </td></tr>
                        <tr>
                            <td class="style10">
                                <strong>
                                <br />
                                PERSONAL DETAILS</strong></td>
                </tr>
                        </tr>
                       
                        <tr>
                            <td class="style5">
                                <span class="style2"><hr />
                                </span></td>
                </tr>
                        </tr>
                          <tr>
                    <td class="style5">
        <asp:Label ID="Label1" runat="server" Text="Portal Registration No. :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                             </td>
                    <td class="style6">


        <asp:Label ID="Label2" runat="server" Text="Proximity Card No. :"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox15" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                                  </td>
                              <tr>
                    <td class="style5">
        <asp:Label ID="Label13" runat="server" Text="Category :"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                            Width="140px">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>OPEN</asp:ListItem>
                            <asp:ListItem>OBC</asp:ListItem>
                            <asp:ListItem>SC</asp:ListItem>
                            <asp:ListItem>ST</asp:ListItem>
                        </asp:DropDownList>
                    </td>  
                    
                    <td class="style6">
        <asp:Label ID="Label25" runat="server" Text="Disability (Divyang) :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList7" runat="server" AutoPostBack="True" 
                            Width="140px">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem>Yes</asp:ListItem>
                        </asp:DropDownList>
                    </td></tr> 
                    <tr>
                    <td>Date Of Joining HAL :</td>
                    <td>
                        <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server">
                        </dx:ASPxDateEdit>

                        <asp:Label ID="Label62" runat="server"></asp:Label>

                    </td>
                    <td>Date Of Ending HAL :</td>
                    <td>
                        <dx:ASPxDateEdit ID="ASPxDateEdit3" runat="server">
                        </dx:ASPxDateEdit>

                        <asp:Label ID="Label63" runat="server" Visible="False"></asp:Label>

                    </td>
                    <tr>
                    <td>Date Of&nbsp; Birth :</td>
                    <td>
                        <dx:ASPxDateEdit ID="ASPxDateEdit4" runat="server">
                        </dx:ASPxDateEdit>

                        <asp:Label ID="Label64" runat="server" Visible="False"></asp:Label>

                    </td>
                    <td class="style5">
        <asp:Label ID="Label3" runat="server" Text="Emergency Contact No. :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox24" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                             </td>
                    </tr>  
                <tr>
                    <td class="style12">Aadhar No. :</td>
                    <td class="style12">
        <asp:TextBox ID="TextBox25" runat="server" style="margin-left: 0px" Width="150px"></asp:TextBox>

                    </td></tr>                     
                <tr>
                    <td class="style5">
                        <span class="style9"><strong>
                        <br />
                        ADDRESS DETAILS</strong></span>
                        <hr />
                    </td>

                </tr>

                    </td>
                
                <tr>
                    <td class="style5">
        <asp:Label ID="Label14" runat="server" Text="Address Line 1 :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox12" runat="server" style="margin-left: 0px" Width="315px"></asp:TextBox>

                             </td>
                    <td class="style6">


        <asp:Label ID="Label15" runat="server" Text="Address Line 2 :"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox13" runat="server" style="margin-left: 0px" Width="330px"></asp:TextBox>

                                  </td>
                              <tr>
                    <td class="style5">
        <asp:Label ID="Label16" runat="server" Text="Pincode :"></asp:Label>
                    </td>
                    <td class="style7">
        <asp:TextBox ID="TextBox14" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>

                                  </td>
    
                    <td class="style6">
        <asp:Label ID="Label17" runat="server" Text="State  :"></asp:Label>
                    </td>
                    <td class="style3">
                        <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                            Width="200px">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>ANDHRA PRADESH</asp:ListItem>
                            <asp:ListItem>ARUNACHAL PRADESH</asp:ListItem>
                            <asp:ListItem>ASSAM</asp:ListItem>
                            <asp:ListItem>BIHAR</asp:ListItem>
                            <asp:ListItem>CHATTISGARH</asp:ListItem>
                            <asp:ListItem>GOA</asp:ListItem>
                            <asp:ListItem>GUJRAT</asp:ListItem>
                            <asp:ListItem>HARYANA</asp:ListItem>
                            <asp:ListItem>HIMACHAL PRADESH</asp:ListItem>
                            <asp:ListItem>JAMMU KASHMIR</asp:ListItem>
                            <asp:ListItem>JHARKHAND</asp:ListItem>
                            <asp:ListItem>KARNATAKA</asp:ListItem>
                            <asp:ListItem>KERALA</asp:ListItem>
                            <asp:ListItem>MADHYA PRADESH</asp:ListItem>
                            <asp:ListItem>MAHARASHTRA</asp:ListItem>
                            <asp:ListItem>MANIPUR</asp:ListItem>
                            <asp:ListItem>MEGHALAYA</asp:ListItem>
                            <asp:ListItem>MIZORAM</asp:ListItem>
                            <asp:ListItem>NAGALAND</asp:ListItem>
                            <asp:ListItem>ODISHA</asp:ListItem>
                            <asp:ListItem>PUNJAB</asp:ListItem>
                            <asp:ListItem>RAJASTHAN</asp:ListItem>
                            <asp:ListItem>SIKKIM</asp:ListItem>
                            <asp:ListItem>TAMIL NADU</asp:ListItem>
                            <asp:ListItem>TELANGANA</asp:ListItem>
                            <asp:ListItem>TRIPURA</asp:ListItem>
                            <asp:ListItem>UTTAR PRADESH</asp:ListItem>
                            <asp:ListItem>UTTARAKHAND</asp:ListItem>
                            <asp:ListItem>WEST BENGAL</asp:ListItem>
                            <asp:ListItem>ANDAMAN &amp; NICOBAR</asp:ListItem>
                            <asp:ListItem>CHANDIGARH</asp:ListItem>
                            <asp:ListItem>DADRA &amp; NAGAR HAVELI &amp; DAMAN DIU</asp:ListItem>
                            <asp:ListItem>DELHI (NCT)</asp:ListItem>
                            <asp:ListItem>LAKSHADEEP &amp; PUDUCHERRY</asp:ListItem>
                            <asp:ListItem>LADAKH</asp:ListItem>
                        </asp:DropDownList>
               </td>
               <tr>
                    <td class="style5">
                        <span class="style10"><strong>
                    EDUCATIONAL DETAILS</strong></span><hr />
                    </td>
                </tr>
                             
                 <tr>
                    <td class="style5">
        <asp:Label ID="Label21" runat="server" Text="Education Type :"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:DropDownList ID="DropDownList8" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource1" DataTextField="EDUCATION_TYPE" 
                            DataValueField="EDUCATION_TYPE" Width="150px" 
                            onselectedindexchanged="DropDownList8_SelectedIndexChanged">
                            <asp:ListItem>SELECT</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT DISTINCT mast_id,EDUCATION_TYPE 
FROM TRAINING_EDUCATION_DETAILS
order by mast_id"></asp:SqlDataSource>

                             </td>
                    <td class="style6">


<asp:Label ID="Label23" runat="server" Text="Passout Year :"></asp:Label>
                    </td>
                    <td class="style3">

        <asp:TextBox ID="TextBox18" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>

                             <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" Visible="False">
                        </dx:ASPxDateEdit>

                        <asp:Label ID="Label58" runat="server" Text="Label" Visible="False"></asp:Label>

                                  </td>
              <tr>
              <td class="style5">


        <asp:Label ID="Label22" runat="server" Text="Eduaction Trade :"></asp:Label>
                    </td>
                    <td class="style7">
                        <asp:DropDownList ID="DropDownList9" runat="server" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="EDUCATION_TRADE" 
                            DataValueField="EDUCATION_TRADE" Width="330px" 
                            onselectedindexchanged="DropDownList9_SelectedIndexChanged">
                            <asp:ListItem>SELECT</asp:ListItem>
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
                            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT param_id,EDUCATION_TYPE, EDUCATION_TRADE
FROM &quot;TRAINING_EDUCATION_DETAILS&quot;
WHERE EDUCATION_TYPE = :EDUCATION_TYPE 
order by param_id">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="DropDownList8" Name="EDUCATION_TYPE" 
                                    PropertyName="SelectedValue" DefaultValue="Select" />
                            </SelectParameters>
                        </asp:SqlDataSource>

</td>
                    <td class="style6">
<asp:Label ID="Label61" runat="server" Text="Other Trade :" Visible="False"></asp:Label>
                    </td>
                    <td class="style3">

        <asp:TextBox ID="TextBox17" runat="server" style="margin-left: 0px" Width="326px" 
                            Visible="False"></asp:TextBox>

                    </td>
                </tr>     
            <tr>
            <td class="style5">


                        Academic Marks / Score :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox16" runat="server" style="margin-left: 0px" Width="100px"></asp:TextBox>

                        <br />

                    </td>
            </tr>
            <tr>
                    <td class="style5">
                        <span class="style10"><strong>
                        <br />
                        BANK DETAILS ON PORTAL</strong></span><hr />
                    </td>
                </tr>

                              <tr>
                    <td class="style5">


                        Bank Name :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox19" runat="server" style="margin-left: 0px" Width="314px"></asp:TextBox>

                        <br />

                    </td>
                    <td class="style6">


        <asp:Label ID="Label60" runat="server" Text="Account Holder Name : "></asp:Label>
                                  </td>
                                                 <td class="style3">

        <asp:TextBox ID="TextBox20" runat="server" style="margin-left: 0px" Width="329px"></asp:TextBox>

                              <tr>
                    <td class="style5">


                        Account Number :</td>
                    <td class="style7">

        <asp:TextBox ID="TextBox21" runat="server" style="margin-left: 0px" Width="168px"></asp:TextBox>

                        <br />

                    </td>
                    <td class="style6">
                        IFSC Code :</td>
                         <td class="style3">

        <asp:TextBox ID="TextBox22" runat="server" style="margin-left: 0px" Width="107px"></asp:TextBox>
                                  <tr>
                                              <td class="style5">
                                                  <span class="style10"><strong>
                                                  <br />
                                                  ADD REMARKS</strong></span><hr />
                    </td>
              <tr>
                    <td class="style5">


        <asp:Label ID="Label27" runat="server" Text="Remark if any :"></asp:Label>
                    </td>
                    <td class="style7">

        <asp:TextBox ID="TextBox23" runat="server" style="margin-left: 0px" Width="317px"></asp:TextBox>

                        <br />
                        </td>
                        <td class="style6">
        <asp:Label ID="Label4" runat="server" Text="Status :"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                            Width="140px">
                            <asp:ListItem>SELECT</asp:ListItem>
                            <asp:ListItem>Active</asp:ListItem>
                            <asp:ListItem>Non-Active</asp:ListItem>
                        </asp:DropDownList>
                    </td>
         </table>
         <br />
         <br />
         <div align=center>
        <asp:Button ID="Button1" runat="server" Text="REGISTER" onclick="Button1_Click" 
                 BackColor="#CCFFFF" Font-Bold="True" Font-Size="Medium" ForeColor="#3333CC" 
                 Height="36px" Width="140px" />
            </div>
    </div>
    </form>
</body>
</html>
