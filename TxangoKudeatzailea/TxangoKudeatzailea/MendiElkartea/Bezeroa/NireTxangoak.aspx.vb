Imports System.Data.OleDb

Public Class NireTxangoak
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim adapterTxangoakApuntatu As New OleDbDataAdapter
        adapterTxangoakApuntatu = DBKudeatzailea.DatuAtzipena.TxangoakApuntatuEgokitzaileaEskuratu

    End Sub


    Protected Sub SaretaNireTxangoak_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles SaretaNireTxangoak.SelectedIndexChanged

        Dim adapterTxangoakApuntatu As New OleDbDataAdapter
        adapterTxangoakApuntatu = DBKudeatzailea.DatuAtzipena.TxangoakApuntatuEgokitzaileaEskuratu

        Dim dataSetTxangoakApuntatu As New DataSet
        adapterTxangoakApuntatu.Fill(dataSetTxangoakApuntatu, "Apuntatu")

        Dim dataTableTxangoak As DataTable
        dataTableTxangoak = dataSetTxangoakApuntatu.Tables("Apuntatu")


        'Saretako KodTxangoa zutabeko aukeraturiko balioa
        Dim Kodea As Integer
        Kodea = SaretaNireTxangoak.Rows(SaretaNireTxangoak.SelectedIndex).Cells(1).Text

        'Sesio aldagaietik email aldagaian jaso
        Dim email As String
        email = Session("email")

        Dim errenkadaZerrenda() As DataRow
        'Aukeratutako txango eta emaila koinziditzen duten errenkadak lortu 
        errenkadaZerrenda = dataTableTxangoak.Select("Email='" & email & "'  and KodTxangoa = " & Kodea & "  ")

        'Apuntatu taulatik ezabatu
        errenkadaZerrenda(0).Delete()

        'komando guztiak definitu
        Dim builder As New OleDbCommandBuilder(adapterTxangoakApuntatu)

        'db update egin
        adapterTxangoakApuntatu.Update(dataSetTxangoakApuntatu, "Apuntatu")
        'dataset eta adapterra hasieratu
        dataSetTxangoakApuntatu.AcceptChanges()

        SaretaNireTxangoak.DataBind()
        'mezua bistaratu
        MsgBox("Txangotik ondo desapuntatu zara!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)

        
    End Sub
End Class