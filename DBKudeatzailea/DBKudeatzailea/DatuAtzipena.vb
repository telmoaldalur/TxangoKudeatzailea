Imports System.Data.OleDb
Imports System.Web

Public Class DatuAtzipena

    'CONEXIO OROKORRA
    Private Shared conSGTA_Lanak As OleDbConnection

    'eraikitzaile pribatua (singleton patroia):
    Private Sub New()
    End Sub

    'metodoak Shared (singleton patroia):
    Public Shared Function Konektatu(ByVal Patha As String) As OleDbConnection
        Dim strConSGTA_Lanak As String =
        "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Patha
        Try
            conSGTA_Lanak = New OleDbConnection(strConSGTA_Lanak)
            'modu deskonektatuan ez da open behar, fill egiten du
            conSGTA_Lanak.Open()
            Return conSGTA_Lanak

        Catch ex As Exception
            Throw New ErroreaKonektatzean(ex.Message & " salb. tratatu dugu, ErroreaKonektatzean jaurtiz")
        End Try
    End Function

    Public Shared Sub ItxiKonexioa()
        conSGTA_Lanak.Close()
    End Sub

    Public Shared Function TxangoakEgokitzaileaEskuratu() As OleDbDataAdapter
        '----------- komandoa ---------------
        Dim komandoa As OleDbCommand
        komandoa = New OleDbCommand("SELECT * FROM Txangoak")
        'komandoa eta konexioa lotu
        komandoa.Connection = conSGTA_Lanak

        '----------- adapter -----------------
        Dim adapter As New OleDbDataAdapter
        'adapter-rari Select agindutzat komandoa jarri
        adapter.SelectCommand = komandoa
        'adapter itzuli
        Return adapter
    End Function

    Public Shared Function ErabiltzaileEgokitzaileaEskuratu() As OleDbDataAdapter
        '----------- komandoa ---------------
        Dim komandoa As OleDbCommand
        komandoa = New OleDbCommand("SELECT * FROM Erabiltzaileak")
        'komandoa eta konexioa lotu
        komandoa.Connection = conSGTA_Lanak

        '----------- adapter -----------------
        Dim adapter As New OleDbDataAdapter
        'adapter-rari Select agindutzat komandoa jarri
        adapter.SelectCommand = komandoa
        'komando guztiak definitu / implementatu
        Dim builder As New OleDbCommandBuilder(adapter)
        'adapter itzuli
        Return adapter
    End Function

    Public Shared Function TxangoakApuntatuEgokitzaileaEskuratu() As OleDbDataAdapter
        '----------- komandoa ---------------
        Dim komandoa As OleDbCommand
        komandoa = New OleDbCommand("SELECT * FROM Apuntatu")
        'komandoa eta konexioa lotu
        komandoa.Connection = conSGTA_Lanak

        '----------- adapter -----------------
        Dim adapter As New OleDbDataAdapter
        'adapter-rari Select agindutzat komandoa jarri
        adapter.SelectCommand = komandoa
        'adapter itzuli
        Return adapter
    End Function

    Public Shared Function TxangoaArgazkiakEgokitzaileaEskuratu() As OleDbDataAdapter
        '----------- komandoa ---------------
        Dim komandoa As OleDbCommand
        komandoa = New OleDbCommand("SELECT * FROM Argazkia")
        'komandoa eta konexioa lotu
        komandoa.Connection = conSGTA_Lanak

        '----------- adapter -----------------
        Dim adapter As New OleDbDataAdapter
        'adapter-rari Select agindutzat komandoa jarri
        adapter.SelectCommand = komandoa
        'adapter itzuli
        Return adapter
    End Function

    '--------------------- SALBUESPENAK -------------------------------------------------------------------------
    Public Class ErroreaKonektatzean
        Inherits ApplicationException 'aplikazio-salbuespenen klasea
        'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
        Public Sub New(Optional ByVal Mezua As String = "Errorea: Ezin izan da datu-basearekiko konexioa egin.")
            MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
        End Sub
    End Class

    Public Class ErroreaTxertatzean
        Inherits ApplicationException 'aplikazio-salbuespenen klasea
        'eraikitzailea birdefinitu (gurasoarenaz baliatuz)
        Public Sub New(Optional ByVal Mezua As String = "Errorea: Ezin izan da ikaslea txertatu")
            MyBase.New(Mezua) 'gurasoaren eraikitzaileari deituz
        End Sub
    End Class

End Class

