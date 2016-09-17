<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="CrearVendedor.aspx.cs" Inherits="ClienteWeb.CrearVendedor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style7 {
        width: 107px;
    }
    .auto-style8 {
        width: 149px;
    }
    .auto-style9 {
        width: 107px;
        height: 26px;
    }
    .auto-style10 {
        width: 149px;
        height: 26px;
    }
    .auto-style11 {
        height: 26px;
    }
        .auto-style12 {
            width: 107px;
            height: 42px;
        }
        .auto-style13 {
            width: 149px;
            height: 42px;
        }
        .auto-style14 {
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Crear Vendedor</h1>

    <table style="width:100%;">
        <tr>
            <td class="auto-style7">Rut</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtRut" runat="server" ToolTip="Ingrese el rut sin digito verificador"></asp:TextBox>
            </td>
            <td> <%-- AGREGAR DE MANERA CORRECTA LA VALIDACION DE RUT --%> 
                <asp:CompareValidator ID="ValRut" runat="server" ControlToValidate="txtRut" ErrorMessage="Rut debe ser ingresado sin digito verificador, ni puntos" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="valRutEmpty" runat="server" ControlToValidate="txtRut" ErrorMessage="El campo Rut es requerido"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Nombre</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtNombre" runat="server" ToolTip="Ingrese nombre completo"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valNombres" runat="server" ControlToValidate="txtNombre" ErrorMessage="El campo Nombre es requerido"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">Apellido</td>
            <td class="auto-style10">
                <asp:TextBox ID="txtApellido" runat="server" ToolTip="Ingrese sólo el primer apellido"></asp:TextBox>
            </td>
            <td class="auto-style11">
                <asp:RequiredFieldValidator ID="valApellidos" runat="server" ControlToValidate="txtApellido" ErrorMessage="El campo Apellido es requerido"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Dirección</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtDireccion" runat="server" ToolTip="Ingrese la dirección completa"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="valDireccion" runat="server" ControlToValidate="txtDireccion" ErrorMessage="El campo Dirección es requerido"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">Correo</td>
            <td class="auto-style8">
                <asp:TextBox ID="txtCorreo" runat="server"></asp:TextBox>
            </td>
            <td><%-- AGREGAR CORRECTAMENTE EL VALIDADOR DE CORREO --%>
                <%--<asp:CustomValidator ID="valCorreo" runat="server" ControlToValidate="txtCorreo" ErrorMessage="El campo Correo es inválido" OnServerValidate="valCorreo_ServerValidate"></asp:CustomValidator>--%> 
                <br />
                <asp:RequiredFieldValidator ID="valCorreoEmpty" runat="server" ControlToValidate="txtCorreo" ErrorMessage="El campo Correo es requerido"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style12">Teléfono</td>
            <td class="auto-style13">
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14">
                <asp:RequiredFieldValidator ID="valTelefonoEmpty" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El campo Teléfono es requerido"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="ValTelefonoNumerico" runat="server" ErrorMessage="Telefono debe ser numerico" ControlToValidate="txtTelefono" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7">&nbsp;</td>
            <td class="auto-style8">
                <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" Width="124px" OnClick="btnIngresar_Click" />
            </td>
            <td>
                <asp:Label ID="lblVendedor" runat="server"></asp:Label>
            </td>
        </tr>
    </table>

</asp:Content>
