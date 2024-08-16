Imports System.Data.OleDb

Partial Class SitePages_Home
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadFeedbacks()
        End If
    End Sub

    Private Sub LoadFeedbacks()
        Dim connectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("~/App_data/SerenitySage.mdb")
        Using con As New OleDbConnection(connectionString)
            Dim cmd As New OleDbCommand("SELECT Full_Name, Rate_Service, Comments FROM Feedback", con)

            con.Open()
            Dim reader As OleDbDataReader = cmd.ExecuteReader()
            Dim feedbacks As New List(Of String)()
            While reader.Read()
                Dim feedback As String = "<div class='mySlides'>" & _
                            "<div class='full-name'>" & reader("Full_Name").ToString() & "</div><br/>" & _
                            "<div class='comments'>" & reader("Comments").ToString() & "</div>" & _
                         "</div>"

                feedbacks.Add(feedback)
            End While
            con.Close()

            ' Assign the feedbacks to the slideshow container in the ASPX page
            slideshowContainer.DataSource = feedbacks
            slideshowContainer.DataBind()

            ' Assuming feedbacks is a List(Of String) that contains your feedbacks
            dotContainer.DataSource = feedbacks
            dotContainer.DataBind()

        End Using
    End Sub
End Class
