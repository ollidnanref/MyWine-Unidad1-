<%@ Page Title="" Language="C#" MasterPageFile="~/Sitio.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="ClienteWeb.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style10 {
            width: 125px;
            height: 30px;
        }
        .auto-style12 {
            margin-left: 13px;
        }
        .auto-style13 {
            margin-left: 0px;
        }
        .auto-style16 {
            width: 77px;
        }
        .auto-style17 {
            width: 125px;
        }
        .auto-style20 {
            height: 175px;
        }
        .auto-style21 {
            height: 30px;
        }
        .auto-style22 {
            width: 132px;
        }
        .auto-style23 {
            width: 132px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Productos en el Carrito</p>
    <p>
        <table style="width:100%;">
            <tr>
                <td class="auto-style22">Eliminar del Carro</td>
                <td class="auto-style17">
                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="auto-style13" Width="104px"></asp:TextBox>
                </td>
                <td class="auto-style16">
                    <asp:Button ID="btnEliminar" runat="server" CssClass="auto-style13" OnClick="btnEliminar_Click" Text="Eliminar" />
                </td>
                <td colspan="2">
                    <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="5" class="auto-style20">
                    <asp:GridView ID="gvCarrito" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" OnSelectedIndexChanged="gvCarrito_SelectedIndexChanged" Width="100%" OnRowDeleted="gvCarrito_RowDeleted" OnRowDeleting="gvCarrito_RowDeleting">
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style22">Valor Total Compra</td>
                <td>
                    <asp:TextBox ID="txtTotal" runat="server" OnTextChanged="txtTotal_TextChanged" Width="106px"></asp:TextBox>
                </td>
                <td class="auto-style21" colspan="2">
                    <asp:Button ID="btnMostrar" runat="server" OnClick="btnMostrar_Click" Text="Mostrar" Width="72px" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td class="auto-style23">
                    <asp:Button ID="btnVolver" runat="server" OnClick="btnVolver_Click" Text="Volver a Listado" Width="116px" />
                </td>
                <td class="auto-style10">
                    <asp:Button ID="btnCompra" runat="server" CssClass="auto-style12" Text="Comprar" Width="88px" OnClick="btnCompra_Click" />
                </td>
                <td class="auto-style21" colspan="3">
                    </td>
            </tr>
            </table>
        </asp:Content>
