
Partial Class DoctorPortalPages_AddBlog
    Inherits System.Web.UI.Page

    Protected Sub btnBlog_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnBlog.Click
        adsAddBlogs.InsertParameters("Username").DefaultValue = Session("Username")
        adsAddBlogs.InsertParameters("date").DefaultValue = DateTime.Now.ToString()
        adsAddBlogs.InsertParameters("blogs").DefaultValue = txtBlog.Text
        adsAddBlogs.Insert()
        lblMessage.Text = "Blog submitted successfully!"
    End Sub
End Class
