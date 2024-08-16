
Partial Class PatientPortalPages_AddAppointment
    Inherits System.Web.UI.Page
    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        adsBooking.InsertParameters("Username").DefaultValue = User.Identity.Name
        adsBooking.InsertParameters("Doctor").DefaultValue = ddlDoctor.SelectedValue
        adsBooking.InsertParameters("Date").DefaultValue = CalDate.SelectedDate.ToString()
        adsBooking.InsertParameters("Time").DefaultValue = ddlTime.SelectedValue
        adsBooking.Insert()
        lblMessage.Text = "You Have Successfully scheduled a booking with us"


    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not User.Identity.IsAuthenticated Then
            Session("RedirectUrl") = Request.RawUrl
            Response.Redirect("~/SitePages/Login.aspx")
        End If
    End Sub
End Class
