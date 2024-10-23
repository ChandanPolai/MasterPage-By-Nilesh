Imports System.Data.SqlClient
Partial Class product
    Inherits System.Web.UI.Page
    Dim conn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\polai\Documents\Visual Studio 2010\WebSites\WebSite3\App_Data\Database.mdf;Integrated Security=True;User Instance=True")

    Sub show_data()
        Dim str As String = "select * from crud"
        Dim cmd As New SqlCommand(str, conn)
        Dim adp As New SqlDataAdapter(cmd)
        Dim ds As New Data.DataSet
        adp.Fill(ds)
        GridView2.DataSource = ds.Tables(0)
        GridView2.DataBind()
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        show_data()
    End Sub

    Protected Sub btn_insert_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_insert.Click
        Try
            Dim str As String = "insert into crud values ( " & txt_id.Text & " , '" & txt_name.Text & "' , '" & txt_stream.Text & "' )"
            Dim cmd As New SqlCommand(str, conn)
            Dim ans As Integer
            conn.Open()
            ans = cmd.ExecuteNonQuery()
            conn.Close()
            MsgBox("inserted data succesfully" & ans)
            show_data()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btn_update_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_update.Click
        Try
            Dim str As String = "update crud set name = '" & txt_name.Text & "', stream = '" & txt_stream.Text & "' where id = " & txt_id.Text & " "
            Dim cmd As New SqlCommand(str, conn)
            Dim ans As Integer
            conn.Open()
            ans = cmd.ExecuteNonQuery()
            conn.Close()
            MsgBox("updated data succesfully" & ans)
            show_data()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub


    Protected Sub btn_delete_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_delete.Click
        Try
            Dim str As String = " delete from crud where id = " & txt_id.Text & " "
            Dim cmd As New SqlCommand(str, conn)
            Dim ans As Integer
            conn.Open()
            ans = cmd.ExecuteNonQuery()
            conn.Close()
            MsgBox("deleted data succesfully" & ans)
            show_data()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub

    Protected Sub btn_search_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_search.Click
        Try
            Dim str As String = " select * from crud where id = " & txt_id.Text & " "
            Dim cmd As New SqlCommand(str, conn)
            Dim dr As SqlDataReader
            conn.Open()
            dr = cmd.ExecuteReader()
            While dr.Read
                txt_name.Text = dr.Item(1).ToString
                txt_stream.Text = dr.Item(2).ToString
            End While

            conn.Close()

        Catch ex As Exception
            MsgBox(ex.ToString)
        End Try
    End Sub
End Class