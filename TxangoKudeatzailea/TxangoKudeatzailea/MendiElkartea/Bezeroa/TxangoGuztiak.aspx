<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TxangoGuztiak.aspx.vb" Inherits="TxangoKudeatzailea.TxangoGuztiak" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 458px;
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
            top: 518px;
            left: 448px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/MendiElkartea/Bezeroa/NireTxangoak.aspx" 
            style="z-index: 1; left: 569px; top: 172px; position: absolute">Nire Txangoak</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:GridView ID="SaretaTxangoak" runat="server" AutoGenerateColumns="False" 
        DataKeyNames="KodTxangoa" DataSourceID="AccessDataSource1" 
        
        
        style="z-index: 1; left: 127px; top: 210px; position: absolute; height: 234px; width: 563px">
        <Columns>
            <asp:BoundField DataField="KodTxangoa" HeaderText="KodTxangoa" 
                InsertVisible="False" ReadOnly="True" SortExpression="KodTxangoa" />
            <asp:BoundField DataField="Eguna" HeaderText="Eguna" SortExpression="Eguna" />
            <asp:BoundField DataField="LekuaHasiera" HeaderText="LekuaHasiera" 
                SortExpression="LekuaHasiera" />
            <asp:BoundField DataField="LekuaBukaera" HeaderText="LekuaBukaera" 
                SortExpression="LekuaBukaera" />
            <asp:BoundField DataField="OrduaHasiera" HeaderText="OrduaHasiera" 
                SortExpression="OrduaHasiera" />
            <asp:BoundField DataField="OrduaBukaera" HeaderText="OrduaBukaera" 
                SortExpression="OrduaBukaera" />
            <asp:BoundField DataField="Partaide_Kop" HeaderText="Partaide_Kop" 
                SortExpression="Partaide_Kop" />
            <asp:BoundField DataField="Deskribapena" HeaderText="Deskribapena" 
                SortExpression="Deskribapena" />
            <asp:BoundField DataField="Distantzia" HeaderText="Distantzia" 
                SortExpression="Distantzia" />
            <asp:BoundField DataField="Zailtasuna" HeaderText="Zailtasuna" 
                SortExpression="Zailtasuna" />
            <asp:CommandField ButtonType="Button" SelectText="Apuntatu" 
                ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
        <asp:Label ID="TxangoZerrenda" runat="server" CssClass="style42" 
            Font-Size="XX-Large" Font-Underline="True" Text="Txango Zerrenda"></asp:Label>
    </p>
    <p>
        &nbsp;</p>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Datu_Basea/MendiElkartea.mdb" 
        SelectCommand="SELECT * FROM [Txangoak]"></asp:AccessDataSource>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:HyperLink ID="HyperLinkAtzera" runat="server" CssClass="style43" 
        NavigateUrl="~/MendiElkartea/Bezeroa/Bezeroa.aspx">Atzera</asp:HyperLink>
    </form>
</body>
</html>
