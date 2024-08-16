Imports System.Data.OleDb

Partial Class SitePages_Blogs
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            LoadBlogs()
        End If
    End Sub

    Private Sub LoadBlogs()
        Dim connectionString As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("~/App_data/SerenitySage.mdb")
        Using con As New OleDbConnection(connectionString)
            Dim cmd As New OleDbCommand("SELECT Username, date, blogs FROM blogs", con)

            con.Open()
            Dim reader As OleDbDataReader = cmd.ExecuteReader()
            Dim blogs As New List(Of String)()
            While reader.Read()
                Dim blogItem As String = "<div class='mySlides'>" & _
                            "<div class='full-name'>" & reader("Username").ToString() & "</div><br/>" & _
                            "<div class='date'>" & reader("date").ToString() & "</div><br/>" & _
                            "<div class='comments'>" & reader("blogs").ToString() & "</div></div>"

                blogs.Add(blogItem)
            End While
            con.Close()

            ' Assign the feedbacks to the slideshow container in the ASPX page
            slideshowContainer2.DataSource = blogs
            slideshowContainer2.DataBind()

            ' Assuming feedbacks is a List(Of String) that contains your feedbacks
            dotContainer2.DataSource = blogs
            dotContainer2.DataBind()

        End Using
    End Sub
End Class
