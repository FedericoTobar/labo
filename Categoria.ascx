<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Categoria.ascx.cs" Inherits="Categoria" %>
<asp:CheckBoxList ID="CheckBoxCategoria" runat="server">
    <asp:ListItem Value="Por Mayor">Por Mayor</asp:ListItem>
    <asp:ListItem Value="Por Menor">Por Menor</asp:ListItem>
</asp:CheckBoxList>
<asp:CustomValidator ID="AlMenosUnoSeleccionado" runat="server" OnServerValidate="AlMenosUnoSeleccionado_ServerValidate" ErrorMessage="Al menos seleccionar uno!"/>