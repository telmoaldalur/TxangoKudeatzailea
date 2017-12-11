Public Class Bezeroa
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Mezua.Text = "Kaixo '" & Session("email") & "' jauna, ongi etorri! "
    End Sub

End Class