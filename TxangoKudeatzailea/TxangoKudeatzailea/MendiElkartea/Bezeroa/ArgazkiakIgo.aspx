<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ArgazkiakIgo.aspx.vb" Inherits="TxangoKudeatzailea.ArgazkiakIgo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style42
        {
            z-index: 1;
            left: 445px;
            top: 76px;
            position: absolute;
            width: 320px;
        }
        .style19
        {
            z-index: 1;
            left: 142px;
            top: 295px;
            position: absolute;
        }
        .style20
        {
            z-index: 1;
            left: 401px;
            top: 234px;
            position: absolute;
        }
        .style5
        {
            position: absolute;
            top: 294px;
            left: 403px;
            z-index: 1;
        }
        .style35
        {
            position: absolute;
            top: 235px;
            z-index: 1;
            left: 664px;
        }
        .style14
        {
            position: absolute;
            top: 295px;
            left: 664px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 232px;
            left: 554px;
            z-index: 1;
        }
        .style2
        {
            z-index: 1;
            left: 22px;
            top: 230px;
            position: absolute;
            height: 20px;
            right: 688px;
        }
        .style3
        {
            z-index: 1;
            left: 279px;
            top: 235px;
            position: absolute;
            width: 104px;
            height: 18px;
        }
        .style31
        {
            z-index: 1;
            left: 33px;
            top: 295px;
            position: absolute;
            width: 104px;
        }
        .style4
        {
            position: absolute;
            top: 296px;
            left: 280px;
            z-index: 1;
        }
        .style48
        {
            height: 639px;
        }
        .style63
        {
            z-index: 1;
            left: 139px;
            top: 235px;
            position: absolute;
        }
        .style50
        {
            position: absolute;
            top: 400px;
            left: 404px;
            z-index: 1;
        }
        .style52
        {
            position: absolute;
            top: 442px;
            left: 528px;
            z-index: 1;
            height: 22px;
        }
        .style53
        {
            position: absolute;
            top: 443px;
            left: 390px;
            z-index: 1;
        }
        .style54
        {
            position: absolute;
            top: 535px;
            left: 531px;
            z-index: 1;
        }
        .style55
        {
            position: absolute;
            top: 537px;
            left: 388px;
            z-index: 1;
        }
        .style57
        {
            position: absolute;
            top: 491px;
            left: 530px;
            z-index: 1;
        }
        .style60
        {
            position: absolute;
            top: 400px;
            left: 526px;
            z-index: 1;
        }
        .style62
        {
            position: absolute;
            top: 603px;
            left: 532px;
            z-index: 1;
        }
        .style61
        {
            position: absolute;
            top: 601px;
            left: 419px;
            z-index: 1;
            width: 41px;
        }
        .style58
        {
            position: absolute;
            top: 493px;
            left: 391px;
            z-index: 1;
        }
        .style64
        {
            position: absolute;
            top: 298px;
            left: 584px;
            z-index: 1;
        }
        .style65
        {
            z-index: 1;
            left: 401px;
            top: 234px;
            position: absolute;
            right: 276px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="style48">
    <div>
    
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
        <asp:Label ID="ArgazkiaIgo" runat="server" CssClass="style42" 
            Font-Size="XX-Large" Font-Underline="True" Text="Argazkiak Igo"></asp:Label>
    
    </div>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    <asp:TextBox ID="TextBoxOrduHasiera" runat="server" CssClass="style19" 
        TabIndex="3" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="TextBoxLekuaHasiera" runat="server" CssClass="style63" 
            TabIndex="1" Enabled="False"></asp:TextBox>
    <asp:TextBox ID="TextBoxLekuaBukaera" runat="server" CssClass="style20" 
            TabIndex="2"></asp:TextBox>
        <asp:TextBox ID="TextBoxOrduaBukaera" runat="server" CssClass="style5" 
            TabIndex="4" Enabled="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxDeskribap" runat="server" CssClass="style35" 
            TabIndex="6" Enabled="False"></asp:TextBox>
        <asp:TextBox ID="TextBoxDistantzia" runat="server" CssClass="style14" 
            TabIndex="7" Enabled="False"></asp:TextBox>
        <asp:Label ID="Distantzia" runat="server" CssClass="style64" 
            Text="Distantzia :"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Deskribapena" runat="server" CssClass="style11" 
            Text="Deskribapena :"></asp:Label>
    <asp:Label ID="LekuaHasiera" runat="server" 
        Text="Lekua Hasiera : " CssClass="style2"></asp:Label>
    <asp:Label ID="LekuaBukaera" runat="server" 
        style="margin-top: 0px;" 
        Text="Lekua Bukaera : " CssClass="style3"></asp:Label>
    <asp:Label ID="OrduaHasiera" runat="server" 
        Text="Ordua Hasiera : " CssClass="style31"></asp:Label>
        <asp:Label ID="OrduaBukaera" runat="server" CssClass="style4" 
            Text="Ordua Bukaera :"></asp:Label>
    </p>
    <asp:TextBox ID="TextBoxLekuaBukaera0" runat="server" CssClass="style65" 
            TabIndex="2" Enabled="False"></asp:TextBox>
        <asp:Label ID="ArgDeskribapena" runat="server" CssClass="style50" 
        Text="Deskribapena :"></asp:Label>
        <asp:TextBox ID="TextBoxAteratEguna" runat="server" CssClass="style52" 
        TabIndex="1"></asp:TextBox>
        <asp:Label ID="AteratakoEguna" runat="server" CssClass="style53" 
            Text="Ateratako eguna : "></asp:Label>
        <asp:Label ID="AteratakOrdua" runat="server" CssClass="style55" 
            Text="Ateratako Ordua :"></asp:Label>
        <asp:TextBox ID="TextBoxArgazkiLekua" runat="server" CssClass="style57" 
        TabIndex="2"></asp:TextBox>
        <asp:TextBox ID="TextBoxArgDeskrib" runat="server" CssClass="style60"></asp:TextBox>
        <asp:FileUpload ID="ArgazkiIgoera" runat="server" CssClass="style62" 
        TabIndex="4" />
        <asp:Button ID="ButtonIgo" runat="server" CssClass="style61" Text="Igo" />
    <asp:Label ID="AteratakLekua" runat="server" CssClass="style58" 
        Text="Ateratako Lekua : "></asp:Label>
        <asp:TextBox ID="TextBoxAteratakoOrdua" runat="server" CssClass="style54" 
        TabIndex="3"></asp:TextBox>
    </form>
</body>
</html>
