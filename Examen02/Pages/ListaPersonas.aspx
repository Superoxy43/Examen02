<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaPersonas.aspx.cs" Inherits="Examen02.Pages.ExitoCrearPersona" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="primary-container">
        <div>
            <h2 font-style: oblique;">Lista de Personas</h2>
        </div>

        <div>
            <a href="CrearPersona.aspx" class="btn btn-primary">Crear Persona</a>
        </div>

        <asp:GridView ID="GvListaPersonas" runat="server" AutoGenerateColumns="false" CssClass="table table-striped" EditRowStyle-BackColor="#CC6600" BorderColor="Black" HeaderStyle-BackColor="White" EditRowStyle-BorderColor="#CC6600" EmptyDataRowStyle-BackColor="#003366" Font-Italic="True" FooterStyle-BackColor="Yellow" FooterStyle-BorderColor="#003300" ForeColor="Black" SelectedRowStyle-BackColor="#6600CC" BackColor="#CCCCCC" HeaderStyle-BorderColor="White">
            <Columns>
                <asp:BoundField DataField="idPersona" HeaderText="ID" />
                <asp:BoundField DataField="nombreProvincia" HeaderText="Provincia" />
                <asp:BoundField DataField="nombreCompleto" HeaderText="Nombre Completo" />
                <asp:BoundField DataField="telefono" HeaderText="Teléfono" />
                <asp:BoundField DataField="fechaNacimiento" HeaderText="Fecha De Nacimiento" />
                <asp:BoundField DataField="salario" HeaderText="Salario" />         

                <asp:TemplateField>
                    <ItemTemplate>
                        <a href="EditarPersona.aspx?id=<%# Eval("idPersona") %> " style="color: #ffd800; background-color: #000000; border-style: groove; border-width: medium; text-decoration: overline;">Editar</a>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>

</asp:Content>
