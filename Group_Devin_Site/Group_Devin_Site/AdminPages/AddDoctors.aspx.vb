
Partial Class AdminPages_AddDoctors
    Inherits System.Web.UI.Page

    Protected Sub btnAddDoctor_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAddDoctor.Click
        If Page.IsValid Then
            adsDoctors.InsertParameters("Name").DefaultValue = txtName.Text
            adsDoctors.InsertParameters("Age").DefaultValue = txtAge.Text
            adsDoctors.InsertParameters("Address").DefaultValue = txtAddress.Text
            adsDoctors.InsertParameters("Phone Number").DefaultValue = txtPhoneNumber.Text
            adsDoctors.InsertParameters("Email").DefaultValue = txtEmail.Text
            adsDoctors.InsertParameters("Gender").DefaultValue = ddlGender.SelectedValue
            adsDoctors.InsertParameters("Speciality").DefaultValue = ddlSpeciality.SelectedValue
            adsDoctors.InsertParameters("Username").DefaultValue = txtUsername.Text
            adsDoctors.InsertParameters("Password").DefaultValue = txtPassword.Text
            adsDoctors.Insert()
            Response.Redirect("~/AdminPages/EditDoctors.aspx")
        End If
    End Sub
End Class
