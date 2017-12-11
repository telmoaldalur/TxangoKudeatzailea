<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Erregistratzea.aspx.vb" Inherits="TxangoKudeatzailea.Erregistratzea" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style7
        {
            position: absolute;
            top: 213px;
            left: 340px;
            z-index: 1;
        }
        .style9
        {
            z-index: 1;
            left: 342px;
            top: 304px;
            position: absolute;
        }
        .style1
        {
            z-index: 1;
            left: 755px;
            top: 260px;
            position: absolute;
        }
        .style10
        {
            z-index: 1;
            left: 755px;
            top: 296px;
            position: absolute;
        }
        .style3
        {
            position: absolute;
            top: 388px;
            left: 270px;
            z-index: 1;
        }
        .style4
        {
            position: absolute;
            top: 380px;
            left: 341px;
            z-index: 1;
        }
        .style5
        {
            position: absolute;
            top: 437px;
            left: 256px;
            z-index: 1;
        }
        .style6
        {
            position: absolute;
            top: 430px;
            left: 342px;
            z-index: 1;
        }
        .style8
        {
            position: absolute;
            top: 345px;
            left: 342px;
            z-index: 1;
        }
        #form1
        {
            height: 600px;
            width: 1096px;
        }
        .style11
        {
            z-index: 1;
            left: 327px;
            top: 383px;
            position: absolute;
            width: 8px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBoxEmail" runat="server" CssClass="style7" TabIndex="1"></asp:TextBox>
        <asp:TextBox ID="TextBoxIzena" runat="server" 
            style="z-index: 1; left: 340px; top: 256px; position: absolute" 
            TabIndex="2"></asp:TextBox>
        <asp:TextBox ID="TextBoxAbizena" runat="server" CssClass="style9" TabIndex="3"></asp:TextBox>
        <asp:TextBox ID="TextBoxPasahitza" runat="server" CssClass="style1" 
            TabIndex="7"></asp:TextBox>
        <asp:TextBox ID="TextBoxGalderaEzkutua" runat="server" 
            style="z-index: 1; left: 755px; top: 337px; position: absolute" 
            TabIndex="9"></asp:TextBox>
        <asp:TextBox ID="TextBoxGalderarenErantzuna" runat="server" 
            style="z-index: 1; left: 756px; top: 379px; position: absolute" 
            TabIndex="10"></asp:TextBox>
        <asp:TextBox ID="TextBoxPasahitzaErrepikatua" runat="server" CssClass="style10" 
            TabIndex="8"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
            runat="server" ControlToValidate="TextBoxEmail" 
            ErrorMessage="Hau ez da email helbidea bat" ForeColor="#CC0000" 
            style="z-index: 1; left: 484px; top: 212px; position: absolute; width: 199px;" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidatorPasahitzak" runat="server" 
            ControlToCompare="TextBoxPasahitza" 
            ControlToValidate="TextBoxPasahitzaErrepikatua" 
            ErrorMessage="Pasahitzak ez dira berdinak" ForeColor="#CC0000" 
            
            style="z-index: 1; left: 895px; top: 260px; position: absolute; width: 178px;"></asp:CompareValidator>
        <asp:Label ID="LabelPasahitza1" runat="server" 
            style="z-index: 1; left: 658px; top: 262px; position: absolute" 
            Text="Pasahitza :"></asp:Label>
        <asp:Label ID="LabelGaldera" runat="server" 
            style="z-index: 1; left: 612px; top: 341px; position: absolute; width: 112px;" 
            Text="Galdera ezkutua :"></asp:Label>
        <asp:Label ID="LabelErantzuna" runat="server" 
            style="z-index: 1; left: 534px; top: 378px; position: absolute; width: 190px;" 
            Text="Galdera ezkutuaren erantzuna :"></asp:Label>
        <asp:Label ID="LabelPasahitza2" runat="server" 
            style="z-index: 1; left: 589px; top: 298px; position: absolute; width: 137px;" 
            Text="Pasahitza Errepikatu :"></asp:Label>
    
    <asp:Label ID="Herria" runat="server" CssClass="style3" Text="Herria :"></asp:Label>
    <asp:TextBox ID="TextBoxHerria" runat="server" CssClass="style4" TabIndex="5"></asp:TextBox>
    <asp:TextBox ID="TextBoxTelefonoa" runat="server" CssClass="style6" TabIndex="6"></asp:TextBox>
        <asp:TextBox ID="TextBoxDNI" runat="server" CssClass="style8" TabIndex="4"></asp:TextBox>
        <asp:Label ID="LabelEmail" runat="server" 
            style="z-index: 1; left: 264px; top: 211px; position: absolute; bottom: 139px; width: 75px; " 
            Text="Email-a : "></asp:Label>
        <asp:Label ID="LabelIzena" runat="server" 
            style="z-index: 1; left: 267px; top: 262px; position: absolute; bottom: 89px;" 
            Text="Izena :"></asp:Label>
        <asp:Label ID="LabelAbizena" runat="server" 
            style="z-index: 1; left: 253px; top: 306px; position: absolute" 
            Text="Abizena :"></asp:Label>
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 269px; top: 349px; position: absolute" 
            Text="NAN :"></asp:Label>
    
    <asp:Label ID="Telefonoa" runat="server" CssClass="style5" Text="Telefonoa :"></asp:Label>
        <asp:Panel ID="Panel1" runat="server" BorderStyle="Solid" 
            style="z-index: 1; left: 204px; top: 156px; position: absolute; height: 349px; width: 873px">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" 
    style="z-index: 1; left: 531px; top: 101px; position: absolute" 
                ControlToValidate="TextBoxPasahitza" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="TextBoxPasahitzaErrepikatua" ErrorMessage="*" 
                ForeColor="Red" style="z-index: 1; left: 530px; top: 137px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="TextBoxGalderaEzkutua" ErrorMessage="*" ForeColor="Red" 
                style="z-index: 1; left: 531px; top: 178px; position: absolute"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="TextBoxGalderarenErantzuna" ErrorMessage="*" ForeColor="Red" 
                style="z-index: 1; left: 533px; top: 220px; position: absolute"></asp:RequiredFieldValidator>
            <asp:Button ID="ButtonErregistratu" runat="server" 
                style="z-index: 1; left: 723px; top: 283px; position: absolute" 
                Text="Erregistratu" />
        </asp:Panel>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ControlToValidate="TextBoxEmail" ErrorMessage="*" ForeColor="#CC0000" 
            style="z-index: 1; left: 323px; top: 216px; position: absolute; width: 8px"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
            ControlToValidate="TextBoxIzena" ErrorMessage="*" ForeColor="Red" 
            style="z-index: 1; left: 323px; top: 259px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="TextBoxAbizena" ErrorMessage="*" ForeColor="Red" 
            style="z-index: 1; left: 328px; top: 305px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBoxDNI" ErrorMessage="*" ForeColor="Red" 
            style="z-index: 1; left: 327px; top: 347px; position: absolute"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
            ControlToValidate="TextBoxHerria" ErrorMessage="*" ForeColor="Red" 
            CssClass="style11"></asp:RequiredFieldValidator>
    
    </div>
    </form>
</body>
</html>
