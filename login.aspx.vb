Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim cnn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\polai\Documents\Visual Studio 2010\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_login.Click
        Dim cmd As String
        cmd = " select * from tbluser where username = '" & txt_username.Text & "' and password = '" & txt_password.Text & "' "
        Dim da As New SqlDataAdapter(cmd, cnn)
        Dim ds As New DataSet
        da.Fill(ds)

        If ds.Tables(0).Rows.Count > 0 Then
            Response.Redirect("product.aspx")
        Else
            lbl_msg.Text = "username and password is incroorect"
        End If



    End Sub
End Class
