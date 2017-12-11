<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="NireTxangoak.aspx.vb" Inherits="TxangoKudeatzailea.NireTxangoak" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            width: 396px;
            height: 133px;
            position: absolute;
            top: 241px;
            left: 316px;
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
            top: 486px;
            left: 406px;
            z-index: 1;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
        style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
        <asp:Label ID="NireTxangoa" runat="server" CssClass="style42" 
            Font-Size="XX-Large" Font-Underline="True" Text="Nire Txangoak"></asp:Label>
    <asp:LinkButton ID="LinkButton1" runat="server" 
        PostBackUrl="~/MendiElkartea/Bezeroa/NireTxangoakEgindakoak.aspx" 
        style="z-index: 1; left: 609px; top: 200px; position: absolute">Historiala</asp:LinkButton>
    <asp:AccessDataSource ID="AccessDataNireTxangoak" runat="server" 
        DataFile="~/Datu_Basea/MendiElkartea.mdb" 
        SelectCommand="SELECT * FROM [Apuntatu] WHERE ([Email] = ?)">
        <SelectParameters>
            <asp:SessionParameter Name="Email" SessionField="email" Type="String" />
        </SelectParameters>
    </asp:AccessDataSource>
    <p>
        <asp:GridView ID="SaretaNireTxangoak" runat="server" 
            AutoGenerateColumns="False" CssClass="style2" DataKeyNames="Email,KodTxangoa" 
            DataSourceID="AccessDataNireTxangoak">
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" 
                    SortExpression="Email" />
                <asp:BoundField DataField="KodTxangoa" HeaderText="KodTxangoa" ReadOnly="True" 
                    SortExpression="KodTxangoa" />
                <asp:BoundField DataField="EgunOrdu" HeaderText="EgunOrdu" 
                    SortExpression="EgunOrdu" />
                <asp:CommandField ButtonType="Button" SelectText="Desapuntatu" 
                    ShowSelectButton="True" />
            </Columns>
        </asp:GridView>
        <asp:HyperLink ID="HyperLinkAtzera" runat="server" CssClass="style43" 
            NavigateUrl="~/MendiElkartea/Bezeroa/TxangoGuztiak.aspx">Atzera</asp:HyperLink>
    </p>
    </form>
</body>
</html>
