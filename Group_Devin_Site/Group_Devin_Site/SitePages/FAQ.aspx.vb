Imports System.Data.OleDb

Partial Class SitePages_FAQ
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadQuestions()
        End If
    End Sub

    Private Sub LoadQuestions()
        Dim connectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("~/App_data/SerenitySage.mdb")
        Using con As New OleDbConnection(connectionString)
            Dim cmd As New OleDbCommand("SELECT Question, Answers FROM Question", con)

            con.Open()
            Dim reader As OleDbDataReader = cmd.ExecuteReader()
            Dim feedbacks As New List(Of String)()
            While reader.Read()
                Dim feedback As String = "<div class='mySlides'>" & _
                            "<div class='full-name'>" & reader("Question").ToString() & "</div><br/>" & _
                            "<div class='comments'>" & reader("Answers").ToString() & "</div>" & _
                         "</div>"

                feedbacks.Add(feedback)
            End While
            con.Close()

            ' Assign the feedbacks to the slideshow container in the ASPX page
            slideshowContainer1.DataSource = feedbacks
            slideshowContainer1.DataBind()

            ' Assuming feedbacks is a List(Of String) that contains your feedbacks
            dotContainer1.DataSource = feedbacks
            dotContainer1.DataBind()

        End Using
    End Sub
End Class
