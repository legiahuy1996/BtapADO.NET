<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="btapADO.NET.Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--CSS--%>
    <link href="css/bootstrap-grid.css" rel="stylesheet" /><link href="css/bootstrap-grid.min.css" rel="stylesheet" /><link href="css/bootstrap-reboot.css" rel="stylesheet" /><link href="css/bootstrap-reboot.min.css" rel="stylesheet" /><link href="css/bootstrap.css" rel="stylesheet" /><link href="css/bootstrap.min.css" rel="stylesheet" />
    <%--JS--%>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="form-group">
                  <label>EmpCode:      </label>
            <asp:TextBox ID="EmpCode" CssClass="form-control" runat="server" ></asp:TextBox>
            </div>
          
            
            <div class="form-group">
                <label>FullName:    </label>
            <asp:TextBox ID="FullName"  CssClass="form-control" runat="server" ></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label>CompanyName</label>
            <asp:TextBox ID="CompanyName"  CssClass="form-control" runat="server" ></asp:TextBox>
            </div>
             <br />
            <asp:Button runat="server" ID="btnSearch" Text="Search" OnClick="btnSearch_Click" CssClass="btn btn-primary" />
            <a href="Employees.aspx" class="btn btn-primary">Quay lại</a>
            <br />
             <asp:GridView ID="gvEmp" runat="server" Height="271px" CssClass="table table-bordered text-center" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" AllowPaging="true" AllowSorting="True"  PageSize="10" OnPageIndexChanging="gvEmp_PageIndexChanging" >
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
