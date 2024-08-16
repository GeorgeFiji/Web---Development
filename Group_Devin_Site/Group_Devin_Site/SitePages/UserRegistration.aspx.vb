
Partial Class SitePages_UserRegistration
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRegister.Click
        adsUsers.InsertParameters("Name").DefaultValue = txtName.Text
        adsUsers.InsertParameters("Email").DefaultValue = txtEmail.Text
        adsUsers.InsertParameters("Phone").DefaultValue = txtPhoneNumber.Text
        adsUsers.InsertParameters("Gender").DefaultValue = ddlGender.SelectedValue()
        adsUsers.InsertParameters("Username").DefaultValue = txtUsername.Text
        adsUsers.InsertParameters("Password").DefaultValue = txtPassword.Text
        adsUsers.Insert()
        Response.Redirect("~/SitePages/Login.aspx")
    End Sub
End Class
