Imports System.Data.OleDb

Public Class TxangoZerrenda
    Inherits System.Web.UI.Page
    Dim aukeratua As Integer

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonBerria.Click

    End Sub

    

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As EventArgs) Handles SaretaTxangoak.SelectedIndexChanged
        

        Session("KodTxangoa") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(0).Text
        Session("Eguna") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(1).Text
        Session("LekuaHasiera") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(2).Text
        Session("LekuaBukaera") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(3).Text
        Session("OrduaHasiera") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(4).Text
        Session("OrduaBukaera") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(5).Text
        Session("Partaide_Kop") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(6).Text
        Session("Deskribapena") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(7).Text
        Session("Distantzia") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(8).Text
        Session("Zailtasuna") = SaretaTxangoak.Rows(SaretaTxangoak.SelectedIndex).Cells(9).Text


        Response.Redirect("~/MendiElkartea/Administratzailea/TxangoBatKudeatu.aspx")


    End Sub


End Class