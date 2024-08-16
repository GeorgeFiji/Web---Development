Imports System.Data.OleDb

Partial Class SitePages_UserLogin
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If User.Identity.IsAuthenticated Then
            ' If user is already authenticated, redirect to the PatientAppointmentHistory page
            Response.Redirect("~/PatientPortalPages/PatientAppointmentHistory.aspx")
        End If
    End Sub

    Protected Sub btnLogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnLogin.Click
        Dim sql As String
        Dim row As Integer
        Dim con As New OleDbConnection()

        ' Establish connection
        con.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("~/App_data/SerenitySage.mdb")
        con.Open() ' Connection open

        ' SQL query
        sql = "SELECT COUNT(*) FROM "
        If ddlRole.SelectedValue = "Doctor" Then
            sql &= "[doctors] WHERE Username=@username AND Password=@password"
        ElseIf ddlRole.SelectedValue = "Patient" Then
            sql &= "[patients] WHERE Username=@username AND Password=@password"
        ElseIf ddlRole.SelectedValue = "Admin" Then
            sql &= "[admin] WHERE Username=@username AND Password=@password"
        Else
            lblError.Text = "Please select a valid role."
            Exit Sub
        End If

        Dim cmd As New OleDbCommand(sql, con)
        cmd.Parameters.AddWithValue("@username", txtUsername.Text)
        cmd.Parameters.AddWithValue("@password", txtPassword.Text)

        row = CType(cmd.ExecuteScalar(), Integer) ' Cast into integer and ExecuteScalar() gets a single value from the database.
        con.Close() ' Connection close

        If row > 0 Then
            ' Store username in session
            Session("Username") = txtUsername.Text

            ' Set the authentication cookie
            FormsAuthentication.SetAuthCookie(txtUsername.Text, False)

            ' Redirect to the original page
            Dim redirectUrl = Session("RedirectUrl")
            If Not String.IsNullOrEmpty(redirectUrl) Then
                Response.Redirect(redirectUrl.ToString())
            Else
                ' If there's no stored URL, redirect based on role
                If ddlRole.SelectedValue = "Doctor" Then
                    Response.Redirect("~/DoctorPortalPages/DoctorAppointmentSchedule.aspx")
                ElseIf ddlRole.SelectedValue = "Patient" Then
                    Response.Redirect("~/PatientPortalPages/PatientAppointmentHistory.aspx")
                ElseIf ddlRole.SelectedValue = "Admin" Then
                    Response.Redirect("~/AdminPages/EditAdmin.aspx")
                End If
            End If
        Else
            lblError.Text = "Username or Password is invalid..."
        End If

    End Sub

End Class
