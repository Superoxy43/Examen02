<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CrearPersona.aspx.cs" Inherits="Examen02.Pages.CrearPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Crear Persona</h2>

    <div>
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
            <asp:Button ID="BtnAgregar" runat="server"
                Text="Guardar"
                ForeColor="White" CssClass="btn btn-success"
                OnClick="BtnAgregar_Click" BorderColor="#0066FF" />

            <a href="ListaPersonas.aspx" class="btn btn-secondary" style="border-style: ridge; color: #ffffff;">Cancelar</a>

        </div>

    </div>
</asp:Content>
