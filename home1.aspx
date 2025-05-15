<%@ Page Language="C#" AutoEventWireup="true" CodeFile="home1.aspx.cs" Inherits="home1" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxNavBar" TagPrefix="dx" %>

<%@ Register namespace="DevExpress.Web.ASPxMenu" tagprefix="ASPxMenu" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Training System</title>
    <style type="text/css">

        .style8
        {
            color: #FF3300;
            font-family: Verdana;
            font-size: x-large;
        }
        .style4
        {
            font-family: Verdana;
            color: #3366CC;
        }
        .style7
        {
            font-size: large;
            color: #3366CC;
            font-family: Verdana;
        }
        .style5
        {
            font-family: Verdana;
        }
        .style2
        {
            font-size: large;
            color: #3366CC;
        }
        .style3
        {
            color: #FFFFFF;
        }
        .style9
        {
            color: #0066FF;
            font-family: Verdana;
            font-size: x-large;
        }
        .style10
        {
            color: #FF0000;
            font-family: Verdana;
            font-size: x-large;
        }
        </style>
</head>
<body>
 
    <form id="form1" runat="server">
    <div>
    <br />
        <table width="100%">
            <tr>
                <td>
                    <strong>
                    <span class="style9">TRAINEE</span><span class="style8"> </span>
                    <span class="style10">PORTAL</span></strong>
                    &nbsp;<span class="style4">&nbsp;&nbsp;</span><span class="style7"> </span><span class="style5"><span class="style2">
                    <strong>Welcome</strong></span></span><span class="style4">,</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="label_user_id" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="Medium" ForeColor="#9900FF" 
                        style="font-size: medium"></asp:Label>
                    &nbsp;<span class="style3"> (</span><asp:Label ID="lbl_sect_code_det" runat="server" 
                        Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#FF9900" 
                        style="font-size: medium"></asp:Label>
                    <span class="style3">)&nbsp;<asp:Label ID="lbl_sect_code_det1" runat="server" 
                        Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="#009900" 
                        style="font-size: medium"></asp:Label>
                    &nbsp;</span>
                    </td>
                <td>
                    &nbsp;</td>
                <td align="right">
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="Large" ForeColor="#CC0000" 
                        NavigateUrl="~/Change_Password.aspx" 
                        style="font-size: medium; color: #FF6600;">Change Password</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" 
                        Font-Names="Verdana" Font-Size="Large" ForeColor="#CC0000" 
                        NavigateUrl="~/Login.aspx" style="font-size: medium; color: #FF6600;">Logout</asp:HyperLink>
                </td>
            </tr>
        </table>
        <br />
         <dx:ASPxSplitter ID="ASPxSplitter2" ClientInstanceName="splitter" 
        runat="server"  BackColor="White"
        Height="100%" FullscreenMode="True" Width="100%">
        <Panes>
            <dx:SplitterPane Size="210px" MinSize="210px" 
                ShowCollapseBackwardButton="True" >
                <ContentCollection>
                    <dx:SplitterContentControl ID="SplitterContentControl1" runat="server">
                       
                        <dx:ASPxNavBar runat="server" AllowSelectItem="True" Target="contentUrlPane" Width="100%"
                            ID="ASPxNavBar1" Theme="MetropolisBlue" EnableTheming="True"   
                            Font-Names="Verdana"  BackColor="White" 
                            Font-Size="Small"   >
                          <Groups>
                                <dx:NavBarGroup Name="ld" Text="" NavigateUrl="~/blank.aspx" Visible="False" 
                                    ClientVisible="False" ItemImagePosition="Top"  >
                                     <HeaderStyle BackColor="White" />
                                     <HeaderStyleCollapsed BackColor="White">
                                     </HeaderStyleCollapsed>
                              </dx:NavBarGroup>
                            </Groups>
                           <%-- <CollapseImage AlternateText=" " Url="&quot;&quot;">
                            </CollapseImage>
                            <ExpandImage AlternateText=" " Url="&quot;&quot;">
                            </ExpandImage>--%>
                            <Paddings Padding="0px"></Paddings>
                          </dx:ASPxNavBar>

                        

                    </dx:SplitterContentControl>
                </ContentCollection>
             
            </dx:SplitterPane>
            <dx:SplitterPane Name="ContentUrlPane" ScrollBars="Auto" 
                ContentUrlIFrameName="contentUrlPane" ShowCollapseForwardButton="True" 
                ContentUrl="~/Default.aspx">
                <ContentCollection>
                    <dx:SplitterContentControl ID="SplitterContentControl2" runat="server">
                    </dx:SplitterContentControl>
                </ContentCollection>
            </dx:SplitterPane>
        </Panes>
                   <Border BorderStyle="None" />
    </dx:ASPxSplitter>  
    
    </div>
    </form>
</body>
</html>
