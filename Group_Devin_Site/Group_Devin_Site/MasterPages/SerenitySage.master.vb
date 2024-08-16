
Partial Class MasterPages_SerenitySage
    Inherits System.Web.UI.MasterPage

    Protected Sub Unnamed1_ItemCreated(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SiteMapNodeItemEventArgs)

    End Sub

    Protected Sub Unnamed1_ItemCreated1(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.SiteMapNodeItemEventArgs)

    End Sub

    Protected Sub Unnamed2_LoggingOut(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.LoginCancelEventArgs)
        FormsAuthentication.SignOut()
        Session.Abandon()
        Session("RedirectUrl") = Nothing
        Response.Redirect("~/SitePages/Home.aspx")
    End Sub


End Class

