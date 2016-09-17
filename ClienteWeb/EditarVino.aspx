<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="EditarVino.aspx.cs" Inherits="ClienteWeb.EditarVino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            width: 115px;
        }
        .auto-style9 {
            width: 115px;
        }
        .auto-style10 {
        height: 23px;
        width: 137px;
    }
        .auto-style11 {
        width: 137px;
    }
    .auto-style12 {
        height: 23px;
        width: 110px;
    }
    .auto-style13 {
        width: 110px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Editar Vino</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style8">Codigo</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">
                    <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" Text="Buscar" Width="99px" />
                </td>
                <td class="auto-style7">
                    <asp:RequiredFieldValidator ID="valCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="El campo Código es requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Nombre</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Color</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8">Año</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtAño" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style12">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Precio</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">Stock</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style13">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style11">
                    <asp:Button ID="btnModificar" runat="server" OnClick="btnModificar_Click" Text="Modificar" Width="126px" />
                </td>
                <td class="auto-style13">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>
