<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NireTxangoakEgindakoak.aspx.vb" Inherits="TxangoKudeatzailea.NireTxangoakEgindakoak" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 187px;
            height: 133px;
            position: absolute;
            top: 318px;
            left: 262px;
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
            top: 566px;
            left: 416px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:HyperLink ID="HyperLinkAtzera" runat="server" CssClass="style43" 
            NavigateUrl="~/MendiElkartea/Bezeroa/NireTxangoak.aspx">Atzera</asp:HyperLink>
    
    </div>
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
        <asp:Label ID="EgindakoTxangoak" runat="server" CssClass="style42" 
            Font-Size="XX-Large" Font-Underline="True" Text="Egindako Txangoak"></asp:Label>
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
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/MendiElkartea/Bezeroa/ArgazkiakIgo.aspx" 
            style="z-index: 1; left: 242px; top: 239px; position: absolute">Argazkiak Igo</asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/MendiElkartea/Bezeroa/DaudenArgazkiakIkusi.aspx" 
            style="z-index: 1; left: 593px; top: 244px; position: absolute">Dauden Argazkiak Ikusi</asp:LinkButton>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="SaretaEgindakoTxangoak" runat="server" 
            AutoGenerateColumns="False" CssClass="style1" 
            DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="LekuaHasiera" HeaderText="LekuaHasiera" 
                    SortExpression="LekuaHasiera" />
                <asp:BoundField DataField="LekuaBukaera" HeaderText="LekuaBukaera" 
                    SortExpression="LekuaBukaera" />
                <asp:BoundField DataField="Deskribapena" HeaderText="Deskribapena" 
                    SortExpression="Deskribapena" />
                <asp:BoundField DataField="Eguna" HeaderText="Eguna" SortExpression="Eguna" />
                <asp:BoundField DataField="Distantzia" HeaderText="Distantzia" 
                    SortExpression="Distantzia" />
                <asp:BoundField DataField="Zailtasuna" HeaderText="Zailtasuna" 
                    SortExpression="Zailtasuna" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Datu_Basea/MendiElkartea.mdb" 
        
        
        
        SelectCommand="SELECT [LekuaHasiera], [LekuaBukaera], [Deskribapena], [Eguna], [Distantzia], [Zailtasuna] FROM [Txangoak]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
