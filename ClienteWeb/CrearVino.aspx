<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="CrearVino.aspx.cs" Inherits="ClienteWeb.CrearVino" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style7 {
            width: 127px;
        }
        .auto-style8 {
            width: 127px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            width: 135px;
        }
        .auto-style11 {
            height: 26px;
            width: 135px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>
    Crear Vino</h1>
    
        <table style="width:100%;">
            <tr>
                <td class="auto-style7">Código</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valCodigo" runat="server" ControlToValidate="txtCodigo" ErrorMessage="El campo Código es requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Nombre</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="valNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El campo Nombre es requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Color</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtColor" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="valColor" runat="server" ControlToValidate="txtColor" ErrorMessage="El campo Color es requerido"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Año</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtAño" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:RequiredFieldValidator ID="valAño" runat="server" ControlToValidate="txtAño" ErrorMessage="El campo Año es requerido"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="ValAnnoNumerico" runat="server" ControlToValidate="txtAño" ErrorMessage="Año debe ser numérico" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Precio</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valPrecio" runat="server" ControlToValidate="txtPrecio" ErrorMessage="El campo Precio es requerido"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="ValPrecioNumerico" runat="server" ControlToValidate="txtPrecio" ErrorMessage="Precio debe ser numérico" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">Stock</td>
                <td class="auto-style10">
                    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="valStock" runat="server" ControlToValidate="txtStock" ErrorMessage="El campo Stock es requerido"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="ValStockNumerico" runat="server" ControlToValidate="txtStock" ErrorMessage="Stock debe ser numérico" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style10">
                    <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="Ingresar" Width="125px" />
                </td>
                <td>
                    <asp:Label ID="lblVino" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
</asp:Content>
