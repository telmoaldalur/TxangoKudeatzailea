Imports System.Data.OleDb

Public Class TxangoaSortu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DBKudeatzailea.DatuAtzipena.Konektatu(Server.MapPath("~/Datu_Basea/MendiElkartea.mdb"))
        SetFocus(TextBoxLekuaHasiera)
        


    End Sub


    Private Sub Button1_Click1(ByVal sender As Object, ByVal e As System.EventArgs) Handles ButtonSortu.Click
        Dim adapterTxangoak As New OleDbDataAdapter
        adapterTxangoak = DBKudeatzailea.DatuAtzipena.TxangoakEgokitzaileaEskuratu

        Dim dataSetTxangoak As New DataSet
        adapterTxangoak.Fill(dataSetTxangoak, "Txangoak")

        Dim dataTableTxangoak As New DataTable
        dataTableTxangoak = dataSetTxangoak.Tables("Txangoak")

        'errenkada bat sortu
        Dim errenkada As DataRow

        errenkada = dataTableTxangoak.NewRow()
        errenkada("Eguna") = Calendar1.SelectedDate
        errenkada("LekuaHasiera") = TextBoxLekuaHasiera.Text
        errenkada("LekuaBukaera") = TextBoxLekuaBukaera.Text
        errenkada("OrduaHasiera") = TextBoxOrduHasiera.Text
        errenkada("OrduaBukaera") = TextBoxOrduaBukaera.Text
        errenkada("Partaide_Kop") = TextBoxPartaideKop.Text
        errenkada("Deskribapena") = TextBoxDeskribap.Text
        errenkada("Distantzia") = TextBoxDistantzia.Text
        errenkada("Zailtasuna") = DropDownListZailtasuna.SelectedItem.ToString

        'Datatable-an errenkada gehitu
        dataTableTxangoak.Rows.Add(errenkada)

        'komando guztiak definitu
        Dim builder As New OleDbCommandBuilder(adapterTxangoak)

        'db update egin
        adapterTxangoak.Update(dataSetTxangoak, "Txangoak")
        'dataset eta adapterra hasieratu
        dataSetTxangoak.AcceptChanges()
        'mezua bistaratu
        MsgBox("Txangoa ondo gorde da!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)

        'Eremuak garbitu
        TextBoxLekuaHasiera.Text = ""
        TextBoxLekuaBukaera.Text = ""
        TextBoxOrduHasiera.Text = ""
        TextBoxOrduaBukaera.Text = ""
        TextBoxPartaideKop.Text = ""
        TextBoxDeskribap.Text = ""
        TextBoxDistantzia.Text = ""
    End Sub
End Class