<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="LifterLog.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lifter's Log</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            float: left;
        }
        .auto-style2 {
            width: 119px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Lifter's Log
        </h1>
        <asp:Label ID="Label1" runat="server" Text="Please Enter "></asp:Label>
        <table align="center" class="auto-style1">
            
            <tr>
                <td class="auto-style2">Please enter</td>
                <td><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br/>
        <div>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
    OnPageIndexChanging="OnPageIndexChanging">
    <Columns>
        <asp:TemplateField HeaderText="Exercise">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("ExerCise") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Exercise") %>'></asp:Label>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" Width="150px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Sets">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Sets") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" Width="150px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Reps">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Reps") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" Width="150px" />
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Weight Lifted">
            <EditItemTemplate>
                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("WeightLifted") %>'></asp:TextBox>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </ItemTemplate>
            <ItemStyle HorizontalAlign="Center" Width="150px" />
        </asp:TemplateField>
    </Columns>
</asp:GridView>
        </div>
        <asp:Button ID="Button1" runat="server" Text="Save" />
    </form>
</body>
</html>
