Imports System.Data.OleDb

Public Class Perfila
    Inherits System.Web.UI.Page
    Dim proba As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        SetFocus(TextBoxEmail)

        If Page.IsPostBack = False Then



            Dim adapterErabiltzailea As New OleDbDataAdapter
            adapterErabiltzailea = DBKudeatzailea.DatuAtzipena.ErabiltzaileEgokitzaileaEskuratu()

            Dim dataSetErabiltzailea As New DataSet
            adapterErabiltzailea.Fill(dataSetErabiltzailea, "Erabiltzaileak")

            Dim dataTableErabiltzailea As New DataTable
            dataTableErabiltzailea = dataSetErabiltzailea.Tables("Erabiltzaileak")

            Dim email As String
            email = Session("email")

            'BEGIRATU email DATASET-EAN EXISTITZEN DEN
            Dim erabiltzaileLista As DataRow()
            'BEGIRATU EA ERRENKADA EXISTIZEN DEN
            erabiltzaileLista = dataTableErabiltzailea.Select("Email = '" & email & "'")
            'TextBox eremuak bete erabiltzailelista-ko balioekin 
            TextBoxEmail.Text = erabiltzaileLista(0).Item("Email")
            TextBoxDNI.Text = erabiltzaileLista(0).Item("Dni")
            TextBoxIzena.Text = erabiltzaileLista(0).Item("Izena")
            TextBoxAbizena.Text = erabiltzaileLista(0).Item("Abizena")
            TextBoxHerria.Text = erabiltzaileLista(0).Item("Herria")
            TextBoxTelefonoa.Text = erabiltzaileLista(0).Item("Tlf")
            TextBoxPasahitza.Text = erabiltzaileLista(0).Item("Pasahitza")
            TextBoxGalderaEzkutua.Text = erabiltzaileLista(0).Item("GalderaEzkutua")
            TextBoxGalderarenErantzuna.Text = erabiltzaileLista(0).Item("ErantzunEzkutua")

        End If



    End Sub




    Protected Sub ButtonAldatu_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonAldatu.Click

        Dim adapterErabiltzailea As New OleDbDataAdapter
        adapterErabiltzailea = DBKudeatzailea.DatuAtzipena.ErabiltzaileEgokitzaileaEskuratu()

        Dim dataSetErabiltzailea As New DataSet
        adapterErabiltzailea.Fill(dataSetErabiltzailea, "Erabiltzaileak")

        Dim dataTableErabiltzailea As New DataTable
        dataTableErabiltzailea = dataSetErabiltzailea.Tables("Erabiltzaileak")


        Dim email As String
        email = Session("email")

        'BEGIRATU email DATASET-EAN EXISTITZEN DEN
        Dim erabiltzaileLista As DataRow()
        'BEGIRATU EA ERRENKADA EXISTIZEN DEN
        erabiltzaileLista = dataTableErabiltzailea.Select("Email = '" & email & "'")

        'Erabiltzailearen datuak editatu
        erabiltzaileLista(0).BeginEdit()

        erabiltzaileLista(0).Item("Email") = TextBoxEmail.Text
        erabiltzaileLista(0).Item("Dni") = TextBoxDNI.Text
        erabiltzaileLista(0).Item("Izena") = TextBoxIzena.Text
        erabiltzaileLista(0).Item("Abizena") = TextBoxAbizena.Text
        erabiltzaileLista(0).Item("Herria") = TextBoxHerria.Text
        erabiltzaileLista(0).Item("Tlf") = TextBoxTelefonoa.Text
        erabiltzaileLista(0).Item("Pasahitza") = TextBoxPasahitza.Text
        erabiltzaileLista(0).Item("GalderaEzkutua") = TextBoxGalderaEzkutua.Text
        erabiltzaileLista(0).Item("ErantzunEzkutua") = TextBoxGalderarenErantzuna.Text

        'Editatzeari bukaera eman 
        erabiltzaileLista(0).EndEdit()

        'komando guztiak definitu
        Dim builder As New OleDbCommandBuilder(adapterErabiltzailea)

        'db update egin
        adapterErabiltzailea.Update(dataSetErabiltzailea, "Erabiltzaileak")
        'dataset eta adapterra hasieratu
        dataSetErabiltzailea.AcceptChanges()

        MsgBox("Ondo aldatu dira zure datuak!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)
        Response.Redirect("~/MendiElkartea/Bezeroa/Bezeroa.aspx")


    End Sub

    Protected Sub ButtonEzabatu_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonEzabatu.Click

        Dim adapterErabiltzailea As New OleDbDataAdapter
        adapterErabiltzailea = DBKudeatzailea.DatuAtzipena.ErabiltzaileEgokitzaileaEskuratu()

        Dim dataSetErabiltzailea As New DataSet
        adapterErabiltzailea.Fill(dataSetErabiltzailea, "Erabiltzaileak")

        Dim dataTableErabiltzailea As New DataTable
        dataTableErabiltzailea = dataSetErabiltzailea.Tables("Erabiltzaileak")

        'Login  egin den erabiltzailea sesio aldagaitik jaso
        Dim email As String
        email = Session("email")

        'BEGIRATU email DATASET-EAN EXISTITZEN DEN
        Dim erabiltzaileLista As DataRow()

            'BEGIRATU EA ERRENKADA EXISTIZEN DEN
            erabiltzaileLista = dataTableErabiltzailea.Select("Email = '" & email & "'")
            'Erabiltzailea ezabatu
        erabiltzaileLista(0).Delete()

            'komando guztiak definitu
            Dim builder As New OleDbCommandBuilder(adapterErabiltzailea)

            'db update egin
            adapterErabiltzailea.Update(dataSetErabiltzailea, "Erabiltzaileak")
            'dataset eta adapterra hasieratu
            dataSetErabiltzailea.AcceptChanges()

            MsgBox("Ondo ezabatu da erabiltzailea!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)
            Response.Redirect("~/MendiElkartea/Hasiera.aspx")
        
        


    End Sub
End Class