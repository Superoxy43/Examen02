<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResultadoEditarPersona.aspx.cs" Inherits="Examen02.Pages.ResultadoEditarPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Se ha completado el proceso</h2>

    <div class="alert-success">
        <p>Se ha modificado la información de la <a style="text-decoration: underline">Persona</a> en la base de datos.</p>
    </div>
    <br />
    <div>
        <a href="ListaPersonas.aspx" class="btn btn-secondary">Regresar</a>
    </div>


</asp:Content>
