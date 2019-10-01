<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CadastroFigurinhas.aspx.cs" Inherits="ProvaExer10.CadastroFigurinhas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Id&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            descrição&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtDesc" runat="server"></asp:TextBox>
            <br />
            ano&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtAno" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSalvar" runat="server" OnClick="btnSalvar_Click" Text="Salvar" />
            <br />
            <br />
            <asp:GridView ID="GVFigu" runat="server">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
