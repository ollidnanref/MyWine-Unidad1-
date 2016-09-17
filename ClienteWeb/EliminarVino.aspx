<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="EliminarVino.aspx.cs" Inherits="ClienteWeb.EliminarVino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 102px;
        }
        .auto-style8 {
            width: 144px;
        }
        .auto-style9 {
            width: 110px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Eliminar Vino</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Codigo</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" Width="96px" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigo" ErrorMessage="El campo Código es requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Nombre</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Color</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Año</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtAño" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Precio</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Stock</td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style8">
                    <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" Width="124px" />
                </td>
                <td class="auto-style9">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
