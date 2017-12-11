Imports System.Data.OleDb

Public Class Erregistratzea
    Inherits System.Web.UI.Page
    Dim proba As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs) Handles Me.Load
        SetFocus(TextBoxEmail)
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonErregistratu.Click
        '-----------------KONEXIOA-------------------------
        Dim konexioa As OleDbConnection
        Try

            konexioa = DBKudeatzailea.DatuAtzipena.Konektatu(Server.MapPath("~/Datu_Basea/MendiElkartea.mdb"))
        Catch ex As DBKudeatzailea.DatuAtzipena.ErroreaKonektatzean
            MsgBox("ezin da konektatu" & ex.Message, vbCritical + vbSystemModal)
            konexioa = New OleDbConnection
        End Try
        '------------------------------------------------------------


        Dim adapterErabiltzailea As New OleDbDataAdapter
        adapterErabiltzailea = DBKudeatzailea.DatuAtzipena.ErabiltzaileEgokitzaileaEskuratu()

        Dim dataSetErabiltzailea As New DataSet
        adapterErabiltzailea.Fill(dataSetErabiltzailea, "Erabiltzaileak")

        Dim dataTableErabiltzailea As New DataTable
        dataTableErabiltzailea = dataSetErabiltzailea.Tables("Erabiltzaileak")


        'BEGIRATU email DATASET-EAN EXISTITZEN DEN
        Dim erabiltzaileLista As DataRow()
        'BEGIRATU EA ERRENKADA EXISTIZEN DEN
        erabiltzaileLista = dataTableErabiltzailea.Select("Email = '" & TextBoxEmail.Text & "'")

        If erabiltzaileLista.Length = 1 Then
            'ERABILTZAILEA EXISTITZEN DA
            MsgBox("Sartutako email helbidea gure Datu Basean existitzen da!! Mesedez beste bat sartu ")
            SetFocus(TextBoxEmail)
        Else
            'ERABILTZAILE BERRI GEHITU
            'errenkada bat sortu
            Dim errenkada As DataRow
            'errenkada berria prestatu erabiltzaile eremuekin(izena,abizena,....)
            errenkada = dataTableErabiltzailea.NewRow()

            errenkada("Email") = TextBoxEmail.Text
            errenkada("Dni") = TextBoxDNI.Text
            errenkada("Izena") = TextBoxIzena.Text
            errenkada("Abizena") = TextBoxAbizena.Text
            errenkada("Herria") = TextBoxHerria.Text
            errenkada("Tlf") = TextBoxTelefonoa.Text
            errenkada("Pasahitza") = TextBoxPasahitza.Text
            errenkada("GalderaEzkutua") = TextBoxGalderaEzkutua.Text
            errenkada("ErantzunEzkutua") = TextBoxGalderarenErantzuna.Text
            Dim egiaztatzenZenbakia As Integer
            Randomize()
            egiaztatzenZenbakia = CLng(Rnd() * 9000000) + 1000000
            errenkada("EgiaztatzeZenbakia") = egiaztatzenZenbakia
            errenkada("Egiaztatuta") = False
            errenkada("ErabiltzaileMota") = "Bezeroa"

            'errenkada gehitu
            dataTableErabiltzailea.Rows.Add(errenkada)

            'komando guztiak definitu
            Dim builder As New OleDbCommandBuilder(adapterErabiltzailea)

            'db update egin
            adapterErabiltzailea.Update(dataSetErabiltzailea, "Erabiltzaileak")
            'dataset eta adapterra hasieratu
            dataSetErabiltzailea.AcceptChanges()

            'EMAIL BAT BIDALI EGIAZTATZE ZENBAKIAREKIN
            Dim urlKatea As String
            urlKatea = "http://localhost:11568/MendiElkartea/Erregistroa/Egiaztatu.aspx?erab=" & TextBoxEmail.Text & "&egZenb=" & egiaztatzenZenbakia

            Try
                'Aldagaiak definitu posta bidaltzeko
                Dim correo As New System.Net.Mail.MailMessage()
                correo.From = New System.Net.Mail.MailAddress("sgtawebgunea@gmail.com")
                correo.Subject = "SGTA-ko ikasgaiko web-gunean erregistratoa"
                correo.To.Add(TextBoxEmail.Text)
                correo.IsBodyHtml = True
                correo.Body = "Kaixo " & TextBoxIzena.Text & " : " & "<br/><br/>MENDI ELKARTE-ko web-gunean erregistratu zara.<br/><br/> Mesedez esteka honetan <a href =""" & urlKatea & """ > " & urlKatea & "  </a>  click egin erregistroa egiaztatzeko."
                'Zerbitzaria konfiguratu
                Dim Servidor As New System.Net.Mail.SmtpClient
                Servidor.Host = "smtp.gmail.com"
                Servidor.Port = 587
                Servidor.EnableSsl = True
                Servidor.Credentials = New System.Net.NetworkCredential("sgtawebgunea@gmail.com", "kartel01")
                Servidor.Send(correo)
            Catch ex As Exception
                MsgBox("Errorea posta elektronikoa bidaltzerakoan ")
            End Try


            'mezua bistaratu eta eremua garbitu
            MsgBox("Erabiltzaile berria ondo gorde da. Kontua egiaztatzeko zure posta helbidera mezu bat bidali da.", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)
            TextBoxEmail.Text = ""
            TextBoxPasahitza.Text = ""
            TextBoxGalderaEzkutua.Text = ""
            TextBoxGalderarenErantzuna.Text = ""
            TextBoxDNI.Text = ""
            TextBoxIzena.Text = ""
            TextBoxAbizena.Text = ""
            TextBoxHerria.Text = ""
            TextBoxTelefonoa.Text = ""
            TextBoxPasahitzaErrepikatua.Text = ""

        End If

        '----------------KONEXIOA ITXI------------------------------
        'Itxi konexioa
        DBKudeatzailea.DatuAtzipena.ItxiKonexioa()
        '-----------------------------------------------------------



    End Sub

End Class