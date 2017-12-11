Imports System.Data.OleDb

Public Class TxangoGuztiak
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        
    End Sub

    Protected Sub AccessDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SqlDataSourceSelectingEventArgs) Handles AccessDataSource1.Selecting

    End Sub

    

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles LinkButton1.Click

    End Sub

    Protected Sub SaretaTxangoak_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles SaretaTxangoak.SelectedIndexChanged

        'TXANGORA APUNTATU 

        'Saretako KodTxangoa zutabeko aukeraturiko balioa
        Dim Kodea As Integer
        Kodea = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(0).Text

        'Sesio aldagaietik email aldagaian jaso
        Dim email As String
        email = Session("email")

        'Oraingo ordu eta eguna
        Dim orainDataOrdu As String
        orainDataOrdu = DateTime.Now()

        Dim adapterTxangoakApuntatu As New OleDbDataAdapter
        adapterTxangoakApuntatu = DBKudeatzailea.DatuAtzipena.TxangoakApuntatuEgokitzaileaEskuratu

        Dim dataSetTxangoakApuntatu As New DataSet
        adapterTxangoakApuntatu.Fill(dataSetTxangoakApuntatu, "Apuntatu")

        Dim dataTableTxangoak As DataTable
        dataTableTxangoak = dataSetTxangoakApuntatu.Tables("Apuntatu")

        Dim errenkadaZerrenda() As DataRow
        'Aukeratutako txango eta emaila koinziditzen duten errenkadak lortu 
        errenkadaZerrenda = dataTableTxangoak.Select("Email='" & email & "'  and KodTxangoa = " & Kodea & "  ")

        'Egiaztatu ea emaitzarik lortu den 
        If (errenkadaZerrenda.Length = 0) Then

            'Erabiltzailea txangora apuntatuta ez badago

            'Apuntatu taulan txertatuko den errenkada berria
            Dim errenkada As DataRow

            errenkada = dataTableTxangoak.NewRow()
            'Apuntatu taulako eremuak,errenkadan oinarrituak
            errenkada("Email") = email
            errenkada("KodTxangoa") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(0).Text
            errenkada("EgunOrdu") = orainDataOrdu

            'Datatable-an errenkada gehitu
            dataTableTxangoak.Rows.Add(errenkada)

            'komando guztiak definitu
            Dim builder As New OleDbCommandBuilder(adapterTxangoakApuntatu)

            'db update egin
            adapterTxangoakApuntatu.Update(dataSetTxangoakApuntatu, "Apuntatu")
            'dataset eta adapterra hasieratu
            dataSetTxangoakApuntatu.AcceptChanges()
            'mezua bistaratu
            MsgBox("Txangora Ondo apuntatu zara!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)

        Else
            'Erabiltzailea txangora apuntatuta badago
            MsgBox("Barkatu, iada apuntatu zaude txango honetara")
            
        End If

    End Sub
End Class