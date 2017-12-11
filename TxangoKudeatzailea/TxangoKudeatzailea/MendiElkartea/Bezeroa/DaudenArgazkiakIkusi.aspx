<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="DaudenArgazkiakIkusi.aspx.vb" Inherits="TxangoKudeatzailea.DaudenArgazkiakIkusi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style45
        {
            width: 571px;
            height: 133px;
            position: absolute;
            top: 332px;
            left: 258px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 23px; position: absolute; height: 122px; width: 297px" />
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" 
            Font-Underline="False" ForeColor="Black" 
            NavigateUrl="~/MendiElkartea/Bezeroa/TxangoBerriak.aspx" 
            style="z-index: 1; left: 73px; top: 211px; position: absolute">TXANGO BERRIAK</asp:HyperLink>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" 
            Font-Underline="False" ForeColor="Black" 
            NavigateUrl="~/MendiElkartea/Bezeroa/PerfilaKudeatu.aspx" 
            style="z-index: 1; left: 76px; top: 338px; position: absolute">KONTUA</asp:HyperLink>
        <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" 
            Font-Underline="False" ForeColor="Black" 
            style="z-index: 1; left: 74px; top: 391px; position: absolute">AMAITU SAIOA</asp:LinkButton>
        <asp:HyperLink ID="HyperLinkHistoriala" runat="server" Font-Bold="True" 
            Font-Underline="False" ForeColor="Black" 
            NavigateUrl="~/MendiElkartea/Bezeroa/NireTxangoHistori.aspx" 
            style="z-index: 1; left: 75px; top: 272px; position: absolute">NIRE TXANGOEN HISTORIALA</asp:HyperLink>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" CssClass="style45" DataSourceID="AccessDataSource1">
            <Columns>
                <asp:BoundField DataField="Deskribapena" HeaderText="Deskribapena" 
                    SortExpression="Deskribapena" />
                <asp:BoundField DataField="AteratakoEguna" DataFormatString="{0:d}" 
                    HeaderText="Ateratako Eguna" SortExpression="AteratakoEguna" />
                <asp:BoundField DataField="AteratakoOrdua" DataFormatString="{0:t}" 
                    HeaderText="Ateratako Ordua" SortExpression="AteratakoOrdua" />
                <asp:BoundField DataField="AteratakoLekua" HeaderText="Ateratako Lekua" 
                    SortExpression="AteratakoLekua" />
                <asp:ImageField DataImageUrlField="Url" 
                    DataImageUrlFormatString="~\Irudiak\{0}" HeaderText="Argazkia">
                    <ControlStyle Height="120px" Width="120px" />
                </asp:ImageField>
            </Columns>
        </asp:GridView>
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
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
        DataFile="~/Datu_Basea/MendiElkartea.mdb" 
        SelectCommand="SELECT [Deskribapena], [AteratakoEguna], [AteratakoOrdua], [AteratakoLekua], [Url] FROM [Argazkia]">
    </asp:AccessDataSource>
    </form>
</body>
</html>
