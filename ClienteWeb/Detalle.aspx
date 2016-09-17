<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="Detalle.aspx.cs" Inherits="ClienteWeb.Detalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 147px;
        }
        .auto-style8 {
            width: 147px;
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
        }
        .auto-style10 {
            width: 108px;
        }
        .auto-style11 {
            width: 108px;
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Detalle Producto</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Código</td>
                <td class="auto-style10">
                    <asp:Label ID="lblCodigo" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblDetalle" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Nombre</td>
                <td class="auto-style10">
                    <asp:Label ID="lblNombre" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Color</td>
                <td class="auto-style11">
                    <asp:Label ID="lblColor" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style8">Año</td>
                <td class="auto-style11">
                    <asp:Label ID="lblAno" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style8">Precio</td>
                <td class="auto-style11">
                    <asp:Label ID="lblPrecio" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style8">Stock</td>
                <td class="auto-style11">
                    <asp:Label ID="lblStock" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style7">Cantidad</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCantidad" runat="server" Width="68px"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="valCantidad2" runat="server" ControlToValidate="txtCantidad" ErrorMessage="El campo Cantidad debe ser numérico" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                    <br />
                    <asp:RequiredFieldValidator ID="valCantidad" runat="server" ControlToValidate="txtCantidad" ErrorMessage="El campo Cantidad es requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Button ID="btbAgregar" runat="server" Text="Agregar al Carrito" Width="130px" OnClick="btbAgregar_Click" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnCarrito" runat="server" OnClick="btnCarrito_Click" Text="Ir al Carrito" Width="90px" />
                </td>
                <td>
                    <asp:Button ID="btnVolver" runat="server" Text="Volver a Listado" Width="116px" OnClick="btnVolver_Click" />
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
