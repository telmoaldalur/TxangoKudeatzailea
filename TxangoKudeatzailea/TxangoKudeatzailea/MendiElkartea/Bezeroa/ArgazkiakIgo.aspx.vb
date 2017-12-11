Imports System.Data.OleDb

Public Class ArgazkiakIgo
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DBKudeatzailea.DatuAtzipena.Konektatu(Server.MapPath("~/Datu_Basea/MendiElkartea.mdb"))
        SetFocus(TextBoxArgDeskrib)

    End Sub




    Private Sub FileUpload1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles ArgazkiIgoera.Load


    End Sub

    Private Sub FileUpload1_Unload(ByVal sender As Object, ByVal e As System.EventArgs) Handles ArgazkiIgoera.Unload

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonIgo.Click

        Dim adapterArgazkiak As New OleDbDataAdapter
        adapterArgazkiak = DBKudeatzailea.DatuAtzipena.TxangoaArgazkiakEgokitzaileaEskuratu

        Dim dataSetArgazkiak As New DataSet
        adapterArgazkiak.Fill(dataSetArgazkiak, "Argazkia")

        Dim dataTableTxangoak As New DataTable
        dataTableTxangoak = dataSetArgazkiak.Tables("Argazkia")


        Igo()

        '---------------------------------------------------------------------------------------------
        'ARGAZKIAREN PATH, ETA ARGAZKIAREN EZAUGARRIAK ARGAZKIAK TAULAN TXERTATU

        Dim ArgazkiIzena As String
        ArgazkiIzena = ArgazkiIgoera.FileName

        'errenkada bat sortu
        Dim errenkada As DataRow

        errenkada = dataTableTxangoak.NewRow()

        errenkada("Url") = ArgazkiIzena
        errenkada("Email") = "a@ehu.es"
        errenkada("KodTxangoa") = "18"
        errenkada("Deskribapena") = TextBoxArgDeskrib.Text
        errenkada("AteratakoEguna") = TextBoxAteratEguna.Text
        errenkada("AteratakoOrdua") = TextBoxAteratakoOrdua.Text
        errenkada("AteratakoLekua") = TextBoxArgazkiLekua.Text
        errenkada("IgotakoEgunOrdu") = Date.Now

      
        'Datatable-an errenkada gehitu
        dataTableTxangoak.Rows.Add(errenkada)

        'komando guztiak definitu
        Dim builder As New OleDbCommandBuilder(adapterArgazkiak)

        'db update egin
        adapterArgazkiak.Update(dataSetArgazkiak, "Argazkia")
        'dataset eta adapterra hasieratu
        dataSetArgazkiak.AcceptChanges()
        'mezua bistaratu
        MsgBox("Argazkia ondo igo da!", MsgBoxStyle.Information + MsgBoxStyle.SystemModal)


    End Sub

    Private Sub Igo()

        '---------------------------------------------------------------------------------------------
        'ARGAZKIAK IGOTZEKO PROZESUA

        'Path-a definitu, bertara igoko dira argazkiak
        Dim path As String = Server.MapPath("~/Irudiak/")

        'Fitxategia ongi dagoen aldagaia
        Dim fileOK As Boolean = False

        'Argazkirik badagoen
        If ArgazkiIgoera.HasFile Then
            Dim FitxategiExtensioa As String
            'Fitxategiaren extensioa lortu
            FitxategiExtensioa = System.IO.Path.GetExtension(ArgazkiIgoera.FileName).ToLower()
            'Onartzen diren extensioak
            Dim OnartzeExtensioak As String() = {".jpg", ".jpeg", ".png", ".gif"}
            'Egiaztatu igotako argazkiak extensioa egokia duen
            For i As Integer = 0 To OnartzeExtensioak.Length - 1
                If FitxategiExtensioa = OnartzeExtensioak(i) Then
                    'Fitxategiak extensio egokia du
                    fileOK = True
                End If
            Next
            'Argazkia extensio egokia badu argazkia gorde.
            If fileOK Then
                Try
                    ArgazkiIgoera.PostedFile.SaveAs(path & ArgazkiIgoera.FileName)

                Catch ex As Exception
                    MsgBox("Fitxategia ezin izan da igo.")
                End Try
            Else
                MsgBox("Ezin da mota honetako fitxategirik igo.")
            End If
        End If



    End Sub
End Class

