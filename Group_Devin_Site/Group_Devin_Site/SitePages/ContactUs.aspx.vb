
Partial Class SitePages_ContactUs
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        adsQuestion.InsertParameters("Full_Name").DefaultValue = txtfName.Text
        adsQuestion.InsertParameters("Email").DefaultValue = txtEmail.Text
        adsQuestion.InsertParameters("Question").DefaultValue = txtQuestion.Text
        adsQuestion.Insert()

        thankYouPanel.Visible = True
    End Sub


    Protected Sub Unnamed4_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim filePath As String = Server.MapPath("~/App_Data/Release_Form.pdf")
        Response.ContentType = "application/pdf"
        Response.AppendHeader("Content-Disposition", "attachment; filename=Release_Form.pdf")
        Response.TransmitFile(filePath)
        Response.End()
    End Sub
End Class
