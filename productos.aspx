<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPageEncabezado.master" CodeFile="productos.aspx.cs" Inherits="productos" %>

<%@ Register Src="~/Rubro.ascx" TagPrefix="uc1" TagName="Rubro" %>
<%@ Register Src="~/Tipo.ascx" TagPrefix="uc1" TagName="Tipo" %>
<%@ Register Src="~/Categoria.ascx" TagPrefix="uc1" TagName="Categoria" %>



<asp:Content runat="server" ContentPlaceHolderID="CajaMaster">
        <asp:Table BorderWidth="1" runat="server">
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">
                    Producto
                </asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1" ColumnSpan="2">
                    <asp:Image ImageUrl="/imagenes/canasto.png" runat="server" ImageAlign="Middle"/>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">
                    Denominación
                </asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:TextBox runat="server" ID="denominacion"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="validarDenom" ControlToValidate="denominacion" ErrorMessage="<br>Este campo no puede ir vacío!" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">
                    Rubro
                </asp:TableHeaderCell><asp:TableCell BorderWidth="1">
                    <uc1:Rubro runat="server" ID="Rubro" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">
                    Tipo
                </asp:TableHeaderCell><asp:TableCell BorderWidth="1">
                    <uc1:Tipo runat="server" ID="Tipo" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">
                    Stock Actual
                </asp:TableHeaderCell><asp:TableCell BorderWidth="1">
                    <asp:TextBox ID="Stock" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="Stock" ID="validarStock" ErrorMessage="<br>Este campo no puede ser vacío!" />
                    <asp:RangeValidator runat="server" ControlToValidate="Stock" ID="RangoDe0A10000" Type="Integer" MinimumValue="0" MaximumValue="10000" ErrorMessage="<br>Solo puede oscilar entre 0 y 10000" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">
                    Categoría Venta
                </asp:TableHeaderCell><asp:TableCell BorderWidth="1">
                    <uc1:Categoria runat="server" ID="Categoria" />
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">
                    Descripcíon
                </asp:TableHeaderCell><asp:TableCell BorderWidth="1">
                    <asp:TextBox ID="descripcion" runat="server" Height="50" TextMode="MultiLine" Width="50%" Style="resize: none"></asp:TextBox>
                    <asp:RequiredFieldValidator id="validarDescripcion" runat="server" ControlToValidate="descripcion" ErrorMessage="<br>Este campo es requerido<br>"/>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table><br />
        <asp:Button ID="Guardar" runat="server" OnClick="Guardar_Click" Text="Guardar" />
        <br />
        <br />
        <asp:Button ID="Sesion" runat="server" Text="Sesion" OnClick="Sesion_Click" /><br /><br />
        <asp:Label ID="PaginaInvalida" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <asp:Table ID="tablaRellenar" runat="server" BorderWidth="1">
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Denominación</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="denominacionTabla2"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Rubro</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="rubroTabla2"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Tipo</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="tipoTabla2"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Stock</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="stockTabla2"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Categoría</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="catTabla2"></asp:Label></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableHeaderCell BorderWidth="1">Descripción</asp:TableHeaderCell>
                <asp:TableCell BorderWidth="1">
                    <asp:Label runat="server" ID="descrTabla2"></asp:Label></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
    
</asp:Content>