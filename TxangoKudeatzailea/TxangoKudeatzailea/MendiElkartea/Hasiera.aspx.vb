Imports System.Data.OleDb

Public Class Hasiera
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        SetFocus(TextBoxEmail)
    End Sub

    Protected Sub ButtonSartu_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonSartu.Click

        '-----------------KONEXIOA-------------------------
        Dim konexioa As OleDbConnection
        Try

            konexioa = DBKudeatzailea.DatuAtzipena.Konektatu(Server.MapPath("~/Datu_Basea/MendiElkartea.mdb"))
        Catch ex As DBKudeatzailea.DatuAtzipena.ErroreaKonektatzean
            MsgBox("ezin da konektatu" & ex.Message, vbCritical + vbSystemModal)
            konexioa = New OleDbConnection
        End Try
        '------------------------------------------------------------

        Dim email As String = TextBoxEmail.Text
        Dim pass As String = TextBoxPasahitza.Text

        Dim adapterErabiltzailea As OleDbDataAdapter
        adapterErabiltzailea = DBKudeatzailea.DatuAtzipena.ErabiltzaileEgokitzaileaEskuratu()

        Dim dataSetErabiltzailea As New DataSet
        adapterErabiltzailea.Fill(dataSetErabiltzailea, "Erabiltzaileak")

        Dim dataTableErabiltzaileak As New DataTable
        dataTableErabiltzaileak = dataSetErabiltzailea.Tables("Erabiltzaileak")

        'BEGIRATU email DATASET-EAN EXISTITZEN DEN
        Dim erabiltzaileLista As DataRow()
        'BEGIRATU EA ERRENKADA EXISTIZEN DEN
        erabiltzaileLista = dataTableErabiltzaileak.Select("Email = '" & email & "'")

        If erabiltzaileLista.Length = 1 Then
            'ERABILTZAILEA EXISTITZEN DA
            If (TextBoxPasahitza.Text = erabiltzaileLista(0).Item("Pasahitza")) Then
                'PASAHITZA EGOKIA
                Session("email") = TextBoxEmail.Text
                Session("konexioa") = konexioa
                Dim katea As String
                katea = "~/MendiElkartea/" & erabiltzaileLista(0).Item("ErabiltzaileMota") & "/" & erabiltzaileLista(0).Item("ErabiltzaileMota") & ".aspx"
                Response.Redirect(katea)
            Else
                'PASAHITZA OKERRA
                MsgBox("Pasahitza ez da zuzena!!!")
                TextBoxPasahitza.Text = ""
                SetFocus(TextBoxPasahitza)
            End If


        Else
            'ERABILTZAILEA EZ DA EXISTITZEN
            MsgBox("Erabiltzailea ez da ezistitzen")

        End If

        '----------------KONEXIOA ITXI------------------------------
        'Itxi konexioa
        DBKudeatzailea.DatuAtzipena.ItxiKonexioa()
        '-----------------------------------------------------------

    End Sub
End Class