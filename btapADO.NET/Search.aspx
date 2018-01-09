<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="btapADO.NET.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <label>EmpCode:      </label>
            <asp:TextBox ID="EmpCode" runat="server" style="margin-left: 52px"></asp:TextBox>
            
            <br />
            <label>FullName:    </label>
            <asp:TextBox ID="FullName" runat="server" style="margin-left: 55px"></asp:TextBox>
            <br />
            <label>CompanyName</label>
            <asp:TextBox ID="CompanyName" runat="server" style="margin-left: 21px"></asp:TextBox>
            <br />
            <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_Click" />
            <a href="Employees.aspx">Quay lại</a>
            <br />
             <asp:GridView ID="gvEmp" runat="server" Height="271px" style="text-align:center;margin-top: 99px" Width="1264px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="True"  PageSize="10" OnPageIndexChanging="gvEmp_PageIndexChanging" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
                <Columns>
                        
                    <asp:BoundField HeaderText="EmpCode" DataField="EmpCode"/>
                    <asp:BoundField HeaderText="Fullname" DataField="Fullname" />
                    <asp:BoundField HeaderText="Company"  DataField="Company" />
                    <asp:BoundField HeaderText="Dept" DataField="Dept" />
                    <asp:BoundField HeaderText="JoinDate" DataFormatString="{0:dd/MM/yyyy}" DataField="JoinDate"/>
                    <asp:BoundField HeaderText="JobTitle" DataField="JobTitle" />
                    <asp:BoundField HeaderText="Nationlity" DataField="Nationlity"/>
                   
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        </div>
    </form>
</body>
</html>
