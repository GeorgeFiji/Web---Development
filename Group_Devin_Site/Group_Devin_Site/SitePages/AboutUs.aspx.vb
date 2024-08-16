
Partial Class SitePages_AboutUs
    Inherits System.Web.UI.Page

    Protected Sub Unnamed1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim filePath As String = Server.MapPath("~/App_Data/Release_Form.pdf")
        Response.ContentType = "application/pdf"
        Response.AppendHeader("Content-Disposition", "attachment; filename=Release_Form.pdf")
        Response.TransmitFile(filePath)
        Response.End()
    End Sub
End Class
