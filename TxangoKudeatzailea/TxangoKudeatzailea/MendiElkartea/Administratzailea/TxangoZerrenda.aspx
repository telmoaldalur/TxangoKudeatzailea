<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TxangoZerrenda.aspx.vb" Inherits="TxangoKudeatzailea.TxangoZerrenda" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            right: 77px;
        }
        .style3
        {
            z-index: 1;
            left: 569px;
            top: 246px;
            position: absolute;
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
            top: 653px;
            left: 280px;
            z-index: 1;
        }
        </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <p>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/Irudiak/MendiLogo.jpg" 
            style="z-index: 1; left: 22px; top: 7px; position: absolute; height: 122px; width: 297px" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Label ID="TxangoZerr" runat="server" CssClass="style42" 
            Font-Size="XX-Large" Font-Underline="True" Text="Txango Zerrenda"></asp:Label>
    </p>
    <p>
        <asp:Button ID="ButtonBerria" runat="server" 
            Text="Berria" PostBackUrl="~/MendiElkartea/Administratzailea/TxangoaSortu.aspx" 
            CssClass="style3" />
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
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLinkAtzera" runat="server" CssClass="style43" 
            NavigateUrl="~/MendiElkartea/Administratzailea/Administratzailea.aspx">Atzera</asp:HyperLink>
        </p>
    <p>
        <asp:GridView ID="SaretaTxangoak" runat="server" AutoGenerateColumns="False" 
            DataSourceID="TxangoZer" 
            
            style="z-index: 1; left: 117px; top: 314px; position: absolute; height: 133px; width: 618px" 
            DataKeyNames="KodTxangoa" AllowSorting="True" CellPadding="4" 
            CssClass="style2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="KodTxangoa" HeaderText="KodTxangoa" 
                    SortExpression="KodTxangoa" InsertVisible="False" ReadOnly="True" />
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
                <asp:CommandField ButtonType="Button" SelectText="Kudeatu" 
                    ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </p>
        <asp:AccessDataSource ID="TxangoZer" runat="server" 
            DataFile="~/Datu_Basea/MendiElkartea.mdb" 
            SelectCommand="SELECT * FROM [Txangoak]">
        </asp:AccessDataSource>
    <p>
        &nbsp;</p>
    <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</body>
</html>
