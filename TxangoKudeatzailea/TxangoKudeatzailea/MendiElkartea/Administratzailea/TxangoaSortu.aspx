<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TxangoaSortu.aspx.vb" Inherits="TxangoKudeatzailea.TxangoaSortu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            z-index: 1;
            left: 132px;
            top: 224px;
            position: absolute;
            height: 20px;
        }
        .style3
        {
            z-index: 1;
            left: 124px;
            top: 261px;
            position: absolute;
            width: 104px;
            right: 750px;
        }
        .style4
        {
            position: absolute;
            top: 338px;
            left: 120px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 338px;
            left: 254px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 382px;
            left: 107px;
            z-index: 1;
        }
        .style7
        {
            position: absolute;
            top: 382px;
            left: 250px;
            z-index: 1;
        }
        .style11
        {
            position: absolute;
            top: 223px;
            left: 502px;
            z-index: 1;
        }
        .style13
        {
            position: absolute;
            top: 261px;
            left: 526px;
            z-index: 1;
            right: 271px;
        }
        .style14
        {
            position: absolute;
            top: 261px;
            left: 627px;
            z-index: 1;
        }
        .style15
        {
            position: absolute;
            top: 300px;
            left: 529px;
            z-index: 1;
        }
        .style18
        {
            position: absolute;
            top: 352px;
            left: 556px;
            z-index: 1;
        }
        .style19
        {
            z-index: 1;
            left: 254px;
            top: 299px;
            position: absolute;
        }
        .style20
        {
            z-index: 1;
            left: 253px;
            top: 261px;
            position: absolute;
        }
        .style21
        {
            z-index: 1;
            left: 255px;
            top: 223px;
            position: absolute;
        }
        .style22
        {
            position: absolute;
            top: 297px;
            left: 628px;
            z-index: 1;
        }
        .style25
        {
            position: absolute;
            top: 304px;
            left: 232px;
            z-index: 1;
            width: 13px;
        }
        .style26
        {
            position: absolute;
            top: 339px;
            left: 231px;
            z-index: 1;
            width: 13px;
        }
        .style27
        {
            position: absolute;
            top: 382px;
            left: 230px;
            z-index: 1;
            width: 13px;
        }
        .style30
        {
            width: 904px;
            height: 372px;
            position: absolute;
            top: 168px;
            left: 64px;
            z-index: 1;
        }
        .style31
        {
            z-index: 1;
            left: 123px;
            top: 299px;
            position: absolute;
            width: 104px;
        }
        .style32
        {
            height: 646px;
        }
        .style33
        {
            width: 230px;
            height: 188px;
            position: absolute;
            top: 165px;
            left: 556px;
            z-index: 1;
        }
        .style35
        {
            position: absolute;
            top: 51px;
            z-index: 1;
            left: 563px;
        }
        .style36
        {
            position: absolute;
            top: 262px;
            left: 606px;
            z-index: 1;
            width: 10px;
            height: 19px;
        }
        .style37
        {
            position: absolute;
            top: 261px;
            left: 233px;
            z-index: 1;
            width: 13px;
        }
        .style38
        {
            position: absolute;
            top: 223px;
            left: 232px;
            z-index: 1;
            width: 13px;
        }
        .style39
        {
            position: absolute;
            top: 224px;
            left: 605px;
            z-index: 1;
            width: 13px;
        }
        .style40
        {
            position: absolute;
            top: 575px;
            left: 390px;
            z-index: 1;
        }
        .style42
        {
            z-index: 1;
            left: 445px;
            top: 76px;
            position: absolute;
            width: 320px;
        }
        .style43
        {
            position: absolute;
            top: 296px;
            left: 321px;
            z-index: 1;
        }
    </style>
</head>
<body style="height: 685px">
    <form id="form1" runat="server" class="style32">
    <div>
    
    </div>
    <p>
        <asp:Label ID="Deskribapena" runat="server" CssClass="style11" 
            Text="Deskribapena :"></asp:Label>
    </p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldDistantzia" runat="server" 
            ControlToValidate="TextBoxDistantzia" CssClass="style36" ErrorMessage="*" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldLekuBukaera1" runat="server" 
            ControlToValidate="TextBoxLekuaBukaera" CssClass="style37" ErrorMessage="*" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldLekuDeskribapena" runat="server" 
            ControlToValidate="TextBoxDeskribap" CssClass="style39" ErrorMessage="*" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
    <asp:Panel ID="Panel2" runat="server" BorderStyle="Solid" CssClass="style30">
        <asp:Calendar ID="Calendar1" runat="server" 
    CssClass="style33" TabIndex="9"></asp:Calendar>
        <asp:TextBox ID="TextBoxDeskribap" runat="server" CssClass="style35" 
            TabIndex="6"></asp:TextBox>
        <asp:Button ID="ButtonSortu" runat="server" CssClass="style43" Text="Sortu" />
    </asp:Panel>
    <asp:Label ID="LekuaHasiera" runat="server" 
        Text="Lekua Hasiera : " CssClass="style2"></asp:Label>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldLekuHasiera" runat="server" 
            ControlToValidate="TextBoxLekuaHasiera" CssClass="style38" ErrorMessage="*" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
        <asp:Label ID="TxangoaSor" runat="server" CssClass="style42" 
            Font-Size="XX-Large" Font-Underline="True" Text="Txangoa Sortu"></asp:Label>
    </p>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldPartaideKopurua0" runat="server" 
            ControlToValidate="TextBoxPartaideKop" CssClass="style27" ErrorMessage="*" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
    <asp:Label ID="LekuaBukaera" runat="server" 
        style="margin-top: 0px;" 
        Text="Lekua Bukaera : " CssClass="style3"></asp:Label>
    <asp:TextBox ID="TextBoxOrduHasiera" runat="server" CssClass="style19" 
        TabIndex="3"></asp:TextBox>
    <p>
    <asp:TextBox ID="TextBoxLekuaHasiera" runat="server" CssClass="style21" 
            TabIndex="1"></asp:TextBox>
    <asp:Label ID="OrduaHasiera" runat="server" 
        Text="Ordua Hasiera : " CssClass="style31"></asp:Label>
    <asp:TextBox ID="TextBoxLekuaBukaera" runat="server" CssClass="style20" 
            TabIndex="2"></asp:TextBox>
        <asp:Label ID="Distantzia" runat="server" CssClass="style13" 
            Text="Distantzia :"></asp:Label>
        <asp:TextBox ID="TextBoxDistantzia" runat="server" CssClass="style14" 
            TabIndex="7"></asp:TextBox>
        <asp:Label ID="Zailtasuna" runat="server" CssClass="style15" 
            Text="Zailtasuna :"></asp:Label>
        <asp:DropDownList ID="DropDownListZailtasuna" runat="server" CssClass="style22" 
            TabIndex="8">
            <asp:ListItem>Handia</asp:ListItem>
            <asp:ListItem>Ertaina</asp:ListItem>
            <asp:ListItem>Txikia</asp:ListItem>
        </asp:DropDownList>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style40" 
            NavigateUrl="~/MendiElkartea/Administratzailea/TxangoZerrenda.aspx">Atzera</asp:HyperLink>
        <asp:Label ID="OrduaBukaera" runat="server" CssClass="style4" 
            Text="Ordua Bukaera :"></asp:Label>
        <asp:TextBox ID="TextBoxOrduaBukaera" runat="server" CssClass="style5" 
            TabIndex="4"></asp:TextBox>
        <asp:Label ID="Partaide_Kop" runat="server" CssClass="style6" 
            Text="Partaide Kopurua : "></asp:Label>
        <asp:TextBox ID="TextBoxPartaideKop" runat="server" CssClass="style7" 
            TabIndex="5"></asp:TextBox>
    </p>
    <asp:Label ID="Eguna" runat="server" CssClass="style18" Text="Eguna :"></asp:Label>
    <p>
        <asp:RequiredFieldValidator ID="RequiredFieldOrduHasiera0" runat="server" 
            ControlToValidate="TextBoxOrduHasiera" CssClass="style25" ErrorMessage="*" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldOrduHasiera1" runat="server" 
            ControlToValidate="TextBoxOrduaBukaera" CssClass="style26" ErrorMessage="*" 
            ForeColor="#FF3300"></asp:RequiredFieldValidator>
    </p>
    </form>
</body>
</html>
