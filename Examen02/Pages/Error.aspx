<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Error.aspx.cs" Inherits="Examen02.Pages.Error" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h2 style="color: #FF0000">Ha ocurrido un error!!</h2>

    <div class="alert-success">
        <p style="color: #FFCC00">Algo ha salido mal... :(</p>
    </div>
    <div>
        <a href="ListaPersonas.aspx" class="btn btn-secondary">Regresar</a>
    </div>


</asp:Content>
