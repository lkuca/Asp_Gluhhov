<%@ Page Title="Aboba1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Asp_Gluhhov.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Aboba1</h3>
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AutoGenerateRows="False" DataSourceID="SqlDataSource_opilane" DefaultMode="Insert">
        <Fields>
            <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
            <asp:BoundField DataField="perekonnanimi" HeaderText="perekonnanimi" SortExpression="perekonnanimi" />
            <asp:TemplateField HeaderText="synniaeg" SortExpression="synniaeg">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("synniaeg") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:Calendar ID="Calendar1" runat="server" SelectedDate='<%# Bind("synniaeg") %>'></asp:Calendar>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("synniaeg") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("synniaeg") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ryhm_ryhmid" SortExpression="Ryhm_ryhmid">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ryhm_ryhmid") %>'></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource_ryhm" DataTextField="ryhmnimi" DataValueField="ryhmid" SelectedValue='<%# Bind("Ryhm_ryhmid") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource_ryhm" runat="server" ConnectionString="<%$ ConnectionStrings:mudel_kutsekool_gluhhovConnectionString1 %>" SelectCommand="SELECT ryhmid, ryhmnimi FROM Ryhms"></asp:SqlDataSource>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ryhm_ryhmid") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Ryhm_ryhmid") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="keskhinne" HeaderText="keskhinne" SortExpression="keskhinne" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource_opilane" runat="server" ConnectionString="<%$ ConnectionStrings:mudel_kutsekool_gluhhovConnectionString1 %>" SelectCommand="SELECT nimi, perekonnanimi, synniaeg, Ryhm_ryhmid, keskhinne FROM Opilanes"></asp:SqlDataSource>
</asp:Content>

