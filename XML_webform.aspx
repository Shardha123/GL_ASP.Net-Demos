<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="XML_webform.aspx.cs" Inherits="XML_DataSource_Demo.XML_webform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
Country:
<asp:DropDownList ID="ddlCountries" runat="server" OnSelectedIndexChanged="CountryChanged"
    AutoPostBack="true">
    <asp:ListItem Text="All" Value="" />
    <asp:ListItem Text="USA" Value="USA" />
    <asp:ListItem Text="UK" Value="UK" />
</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:
<asp:DropDownList ID="ddlCities" runat="server" OnSelectedIndexChanged="CityChanged"
    AutoPostBack="true">
    <asp:ListItem Text="All" Value="" />
    <asp:ListItem Text="Seattle" Value="Seattle" />
    <asp:ListItem Text="Tacoma" Value="Tacoma" />
    <asp:ListItem Text="Kirkland" Value="Kirkland" />
    <asp:ListItem Text="Redmond" Value="Redmond" />
    <asp:ListItem Text="London" Value="London" />
</asp:DropDownList>
<hr />
<asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Employees.xml">
</asp:XmlDataSource>
<asp:GridView ID="GridView1" runat="server" XPath="/Employees/Employee" DataSourceID="XmlDataSource1"
    AutoGenerateColumns="false" HeaderStyle-BackColor="#3AC0F2" HeaderStyle-ForeColor="White">
    <Columns>
        <asp:TemplateField HeaderText="Id" HeaderStyle-Width="50">
            <ItemTemplate>
                <%# XPath("@Id") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Name" HeaderStyle-Width="100">
            <ItemTemplate>
                <%# XPath("EmployeeName") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="City" HeaderStyle-Width="100">
            <ItemTemplate>
                <%# XPath("@City") %>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Country" HeaderStyle-Width="100">
            <ItemTemplate>
                <%# XPath("Country") %>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/Employees.xml"></asp:XmlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
