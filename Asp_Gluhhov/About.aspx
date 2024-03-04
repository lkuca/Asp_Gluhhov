<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Asp_Gluhhov.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Opilased</h3>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="opilaneid" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
            <Columns>
                <asp:BoundField DataField="opilaneid" HeaderText="opilaneid" InsertVisible="False" ReadOnly="True" SortExpression="opilaneid" />
                <asp:BoundField DataField="nimi" HeaderText="nimi" SortExpression="nimi" />
                <asp:BoundField DataField="perekonnanimi" HeaderText="perekonnanimi" SortExpression="perekonnanimi" />
                <asp:BoundField DataField="synniaeg" HeaderText="synniaeg" SortExpression="synniaeg" />
                <asp:BoundField DataField="keskhinne" HeaderText="keskhinne" SortExpression="keskhinne" />
                <asp:BoundField DataField="ryhmnimi" HeaderText="ryhmnimi" SortExpression="ryhmnimi" />
                <asp:BoundField DataField="osakond" HeaderText="osakond" SortExpression="osakond" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mudel_kutsekool_gluhhovConnectionString1 %>" DeleteCommand="DELETE FROM [Opilanes] WHERE [opilaneid] = @opilaneid" InsertCommand="INSERT INTO [Opilanes] ([nimi], [perekonnanimi], [synniaeg], [Ryhm_ryhmid], [keskhinne]) VALUES (@nimi, @perekonnanimi, @synniaeg, @Ryhm_ryhmid, @keskhinne)" SelectCommand="SELECT Opilanes.opilaneid, Opilanes.nimi, Opilanes.perekonnanimi, Opilanes.synniaeg, Opilanes.keskhinne, Ryhms.ryhmnimi, Ryhms.osakond FROM Opilanes INNER JOIN Ryhms ON Opilanes.Ryhm_ryhmid = Ryhms.ryhmid" UpdateCommand="UPDATE [Opilanes] SET [nimi] = @nimi, [perekonnanimi] = @perekonnanimi, [synniaeg] = @synniaeg, [Ryhm_ryhmid] = @Ryhm_ryhmid, [keskhinne] = @keskhinne WHERE [opilaneid] = @opilaneid">
            <DeleteParameters>
                <asp:Parameter Name="opilaneid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="nimi" Type="String" />
                <asp:Parameter Name="perekonnanimi" Type="String" />
                <asp:Parameter Name="synniaeg" Type="DateTime" />
                <asp:Parameter Name="Ryhm_ryhmid" Type="Int32" />
                <asp:Parameter Name="keskhinne" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="nimi" Type="String" />
                <asp:Parameter Name="perekonnanimi" Type="String" />
                <asp:Parameter Name="synniaeg" Type="DateTime" />
                <asp:Parameter Name="Ryhm_ryhmid" Type="Int32" />
                <asp:Parameter Name="keskhinne" Type="Decimal" />
                <asp:Parameter Name="opilaneid" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
