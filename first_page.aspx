<%@ Page Language="C#" AutoEventWireup="true" CodeFile="first_page.aspx.cs" Inherits="first_page" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v13.1, Version=13.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxImageGallery" tagprefix="dx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <marquee style="font-weight: 700; font-size: xx-large; background-color:Teal; color:White">WE SHAPE YOUR FUTURE!</marquee>
    <div style="height: 348px">
        
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Training.jpg" Height="140%" 
            Width="100%" />
        <br />





    </div>
    </form>
</body>
</html>
