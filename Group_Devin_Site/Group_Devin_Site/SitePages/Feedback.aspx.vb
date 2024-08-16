
Partial Class SitePages_Feedback
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        adsFeedback.InsertParameters("Full_Name").DefaultValue = txtfName.Text
        adsFeedback.InsertParameters("Email").DefaultValue = txtEmail.Text
        adsFeedback.InsertParameters("Rate_Service").DefaultValue = ddlRating.Text
        adsFeedback.InsertParameters("Rate_Website").DefaultValue = ddlExperience.Text
        adsFeedback.InsertParameters("Comments").DefaultValue = txtComment.Text()
        adsFeedback.Insert()

        thankYouPanel.Visible = True
    End Sub
End Class
