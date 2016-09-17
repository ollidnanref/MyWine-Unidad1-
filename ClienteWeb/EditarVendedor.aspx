<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="EditarVendedor.aspx.cs" Inherits="ClienteWeb.EditarVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
        height: 23px;
        width: 143px;
    }
        .auto-style10 {
        width: 143px;
    }
        .auto-style12 {
        width: 119px;
    }
    .auto-style13 {
        width: 116px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Editar Vendedor</p>
    <p>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style13">Rut</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtRut" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" Width="102px" />
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valRut" runat="server" ControlToValidate="txtRut" ErrorMessage="El campo Rut es requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Nombre</td>
                <td class="auto-style7">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Apellido</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Direccion</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Correo</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Teléfono</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" Width="121px" />
                </td>
                <td>
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
