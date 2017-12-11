<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Hasiera.aspx.vb" Inherits="TxangoKudeatzailea.Hasiera" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    </head>
<body style="height: 324px">
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" 
            Font-Underline="True" 
            style="z-index: 1; left: 500px; top: 39px; position: absolute; width: 310px; height: 39px;" 
            Text="MENDI ELKARTEA " Font-Bold="True"></asp:Label>
        <asp:Label ID="Label2" runat="server" 
            style="z-index: 1; left: 252px; top: 40px; position: absolute; height: 23px; width: 74px; right: 369px" 
            Text="a@ehu.es"></asp:Label>
        <asp:Label ID="Label3" runat="server" 
            style="z-index: 1; left: 253px; top: 66px; position: absolute; width: 9px" 
            Text="a"></asp:Label>
    </p>
    <asp:Panel ID="Panel1" runat="server" BorderColor="#999999" BorderStyle="Solid" 
        style="z-index: 1; left: 378px; top: 291px; position: absolute; height: 140px; width: 579px">
    </asp:Panel>
    <p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Irudiak/AiakoHarriak.jpg" 
            
            style="z-index: 1; left: 383px; top: 444px; position: absolute; width: 511px; height: 162px;" />
    </p>
    <p>
        <asp:Image ID="Image5" runat="server" ImageUrl="~/Irudiak/jaizkibel.jpg" 
            style="z-index: 1; left: 9px; top: 124px; position: absolute; height: 213px; width: 363px" />
    </p>
    <p>
        <asp:Label ID="LabelEmail" runat="server" 
            style="z-index: 1; left: 428px; top: 310px; position: absolute; height: 24px; width: 135px; right: 404px;" 
            Text="Erabiltzailea ( email ) :"></asp:Label>
        <asp:Label ID="LabelPasahitza" runat="server" 
            style="z-index: 1; left: 498px; top: 341px; position: absolute; width: 63px" 
            Text="Pasahitza :"></asp:Label>
        <asp:TextBox ID="TextBoxEmail" runat="server" 
            style="z-index: 1; left: 592px; top: 306px; position: absolute" TabIndex="1"></asp:TextBox>
        <asp:TextBox ID="TextBoxPasahitza" runat="server" 
            style="z-index: 1; left: 591px; top: 335px; position: absolute" TabIndex="2" 
            TextMode="Password"></asp:TextBox>
        <asp:Button ID="ButtonSartu" runat="server" 
            style="z-index: 1; left: 746px; top: 362px; position: absolute; width: 76px; height: 26px;" 
            TabIndex="3" Text="Sartu" />
        <asp:LinkButton ID="LinkButtonBerreskuratu" runat="server" 
            style="z-index: 1; left: 584px; top: 389px; position: absolute; width: 141px;" 
            TabIndex="5">Pasahitza berreskuratu</asp:LinkButton>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="TextBoxEmail" ErrorMessage="*" ForeColor="#CC0000" 
            style="z-index: 1; left: 572px; top: 309px; position: absolute; width: 15px"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" 
            runat="server" ControlToValidate="TextBoxEmail" 
            ErrorMessage="Email helbide bat sartu mesedez" ForeColor="#CC0000" 
            style="z-index: 1; left: 759px; top: 309px; position: absolute; width: 206px; bottom: 183px;" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:HyperLink ID="HyperLinkBerria" runat="server" 
            style="z-index: 1; left: 612px; top: 367px; position: absolute; height: 19px; width: 106px;" 
            TabIndex="4" NavigateUrl="~/MendiElkartea/Erregistroa/Erregistratzea.aspx">Erabiltzaile berria</asp:HyperLink>
        <asp:Image ID="Image6" runat="server" ImageUrl="~/Irudiak/la rhune.jpg" 
            style="z-index: 1; left: 380px; top: 125px; position: absolute; height: 162px; width: 582px" />
    </p>
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/3erregemaila.jpg" 
            style="z-index: 1; left: 10px; top: 343px; position: absolute; height: 267px; width: 363px" />
        <asp:Image ID="Image4" runat="server" ImageUrl="~/Irudiak/Txindoki.jpg" 
            style="z-index: 1; left: 972px; top: 129px; position: absolute; height: 307px; width: 279px" />
    </p>
    <p>
        <asp:Image ID="Image3" runat="server" ImageUrl="~/Irudiak/aizkorri.jpg" 
            style="z-index: 1; left: 899px; top: 443px; position: absolute; height: 165px; width: 350px" />
    </p>
    </form>
    </body>
</html>
