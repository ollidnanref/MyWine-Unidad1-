<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="EliminarVendedor.aspx.cs" Inherits="ClienteWeb.EliminarVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 104px;
    }
    .auto-style8 {
        width: 141px;
    }
    .auto-style9 {
        width: 112px;
    }
    .auto-style10 {
        width: 104px;
        height: 26px;
    }
    .auto-style11 {
        width: 141px;
        height: 26px;
    }
    .auto-style12 {
        width: 112px;
        height: 26px;
    }
    .auto-style13 {
        height: 26px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
    Eliminar Vendedor</p>
<p>
    <table style="width:100%;">
        <tr>
            <td class="auto-style7">Rut</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">
                <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" Width="97px" />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valRut" runat="server" ControlToValidate="txtRut" ErrorMessage="El campo Rut es requerido"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Nombre</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style7">Apellido</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">Dirección</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Correo</td>
            <td class="auto-style11">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style7">Teléfono</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style9">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" Width="125px" />
            </td>
            <td colspan="2">
                <asp:Label ID="lblMensaje" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</p>
</asp:Content>
