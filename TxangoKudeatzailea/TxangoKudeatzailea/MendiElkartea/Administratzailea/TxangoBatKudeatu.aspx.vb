Imports System.Data.OleDb

Public Class TxangoBatKudeatu
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DBKudeatzailea.DatuAtzipena.Konektatu(Server.MapPath("~/Datu_Basea/MendiElkartea.mdb"))

        'lehenengo aldian bakarrik 
        'Texboxak aurreko orritik aukeraturiko balioekin kargatu
        If Page.IsPostBack = False Then
            Calendar1.SelectedDate = Session("Eguna")
            TextBoxLekuaHasiera.Text = Session("LekuaHasiera")
            TextBoxLekuaBukaera.Text = Session("LekuaBukaera")
            TextBoxOrduHasiera.Text = Session("OrduaHasiera")
            TextBoxOrduaBukaera.Text = Session("OrduaBukaera")
            TextBoxPartaideKop.Text = Session("Partaide_Kop")
            TextBoxDeskribapena.Text = Session("Deskribapena")
            TextBoxDistantzia.Text = Session("Distantzia")
            DropDownListZailtasuna.Text = Session("Zailtasuna")
        End If

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonEzabatu.Click

        'Sesio aldagaia jasotzeko Kodea aldagaia
        Dim Kodea As Integer

        Kodea = Session("KodTxangoa")

        Select Case MsgBox("Ziur zaude? ", MsgBoxStyle.YesNo + MsgBoxStyle.Information)
            ' "si"-ri sakatu diozu
            Case MsgBoxResult.Yes

                Dim adapterTxangoak As New OleDbDataAdapter
                adapterTxangoak = DBKudeatzailea.DatuAtzipena.TxangoakEgokitzaileaEskuratu

                Dim dataSetTxangoak As New DataSet
                adapterTxangoak.Fill(dataSetTxangoak, "Txangoak")

                Dim dataTableTxangoak As DataTable
                dataTableTxangoak = dataSetTxangoak.Tables("Txangoak")

                'Select egin ondoren lortuko den errenkada zerrenda, gure kasuan errenkada bakarra
                Dim errenkadaZerrenda() As DataRow
                errenkadaZerrenda = dataTableTxangoak.Select("KodTxangoa= '" & Kodea & "' ")

                'Errenkada zerrendatik errenkada ezabatu eta salbuespenea tratatu
                errenkadaZerrenda(0).Delete()

                'komando guztiak definitu
                Dim builder As New OleDbCommandBuilder(adapterTxangoak)
                'db update egin
                adapterTxangoak.Update(dataSetTxangoak, "Txangoak")
                'aldaketak gorde
                dataSetTxangoak.AcceptChanges()

                'mezua bistaratu
                MsgBox("Ondo ezabatu da!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)
                Response.Redirect("~/MendiElkartea/Administratzailea/TxangoZerrenda.aspx")

                'No aukeratu da
            Case MsgBoxResult.No
                'atzera bueltatu, ezer egin gabe
        End Select
    End Sub

    Protected Sub Atzera_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonAldatu.Click
        'Sesio aldagaia jasotzeko Kodea aldagaia
        Dim Kodea As Integer

        Kodea = Session("KodTxangoa")

        Dim adapterTxangoak As New OleDbDataAdapter
        adapterTxangoak = DBKudeatzailea.DatuAtzipena.TxangoakEgokitzaileaEskuratu

        Dim dataSetTxangoak As New DataSet
        adapterTxangoak.Fill(dataSetTxangoak, "Txangoak")

        Dim dataTableTxangoak As DataTable
        dataTableTxangoak = dataSetTxangoak.Tables("Txangoak")


        Dim errenkadaZerrenda() As DataRow

        'Select egin ondoren lortuko den errenkada zerrenda, gure kasuan errenkada bakarra
        errenkadaZerrenda = dataTableTxangoak.Select("KodTxangoa=" & Kodea & " ")

        'Errenkada zerrendan aldaketak egiteko abiarazi
        errenkadaZerrenda(0).BeginEdit()

        ' 0 Errenkadako eremuetan balio berriak eman
        errenkadaZerrenda(0).Item("Eguna") = Calendar1.SelectedDate
        errenkadaZerrenda(0).Item("LekuaHasiera") = TextBoxLekuaHasiera.Text
        errenkadaZerrenda(0).Item("LekuaBukaera") = TextBoxLekuaBukaera.Text
        errenkadaZerrenda(0).Item("OrduaHasiera") = TextBoxOrduHasiera.Text
        errenkadaZerrenda(0).Item("OrduaBukaera") = TextBoxOrduaBukaera.Text
        errenkadaZerrenda(0).Item("Partaide_Kop") = TextBoxPartaideKop.Text
        errenkadaZerrenda(0).Item("Deskribapena") = TextBoxDeskribapena.Text
        errenkadaZerrenda(0).Item("Distantzia") = TextBoxDistantzia.Text
        errenkadaZerrenda(0).Item("Zailtasuna") = DropDownListZailtasuna.SelectedItem.Text

        'Aldaketak gorde errenkadan
        errenkadaZerrenda(0).EndEdit()

        'Command builder eraiki adapterrarekin
        Dim builder As New OleDbCommandBuilder(adapterTxangoak)
        'db update egin
        adapterTxangoak.Update(dataSetTxangoak, "Txangoak")
        'dataset eta adapterra hasieratu
        dataSetTxangoak.AcceptChanges()

        MsgBox("Ondo aldatu da txangoa!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)


    End Sub

End Class