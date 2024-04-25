<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarPersona.aspx.cs" Inherits="Examen02.Pages.EditarPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2>Editar Persona</h2>

    <div>

        <div>
            <span>ID</span>
            <asp:TextBox ID="TxtidPersona" runat="server" CssClass="form-control" Enabled="false"></asp:TextBox>
        </div>

        <div>
            <span>Provincia</span>
            <asp:DropDownList ID="DdlProvincia" runat="server" Enabled="true"></asp:DropDownList>
        </div>

        <div>
            <span>Nombre Completo</span>
            <asp:TextBox ID="TxtNombCompleto" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <span>Teléfono (0000-0000)</span>
            <asp:TextBox ID="TxtTelefono" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <span>Fecha de Nacimiento</span>
            <asp:TextBox ID="TxtfechaNacimiento" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <div>
            <span>Salario</span>
            <asp:TextBox ID="TxtSalario" runat="server" CssClass="form-control"></asp:TextBox>
        </div>

        <br />
        <div cssclass="table table-striped-columns">
            <asp:Button ID="BtnEditar" runat="server"
                Text="Guardar"
                ForeColor="White" CssClass="btn btn-success"
                OnClick="BtnEditar_Click" BorderColor="#0066FF" />
            <asp:Button ID="BtnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="BtnEliminar_Click" />
            <a href="ListaPersonas.aspx" class="btn btn-secondary">Cancelar</a>

        </div>

    </div>




</asp:Content>
