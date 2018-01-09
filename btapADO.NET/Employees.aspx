<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Employees.aspx.cs" Inherits="btapADO.NET.Employees" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--CSS--%>
    <a href="Search.aspx.cs">Search.aspx.cs</a><link href="css/bootstrap-grid.css" rel="stylesheet" /><link href="css/bootstrap-grid.min.css" rel="stylesheet" /><link href="css/bootstrap-reboot.css" rel="stylesheet" /><link href="css/bootstrap-reboot.min.css" rel="stylesheet" /><link href="css/bootstrap.css" rel="stylesheet" /><link href="css/bootstrap.min.css" rel="stylesheet" />
    <%--JS--%>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin-top: 58px">

            <label runat="server">EmpCode:  </label> 
             <asp:TextBox ID="txtEmpCode" TextMode="Number" runat="server" style="margin-left: 111px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="txtEmpCode" ID="validateEmpcode" ForeColor="Red" ErrorMessage="Vui lòng nhập EmpCode"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ValidationExpression="^[0-9]+$" ControlToValidate="txtEmpCode" ForeColor="Red" ErrorMessage="chỉ được nhập số"></asp:RegularExpressionValidator>
              <br />
            <label runat="server">JoinDate: </label> 
             <asp:TextBox ID="JoinDate" TextMode="Date" runat="server" style="margin-left: 119px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="JoinDate" ForeColor="Red" ErrorMessage="Vui lòng nhập ngày vào làm"></asp:RequiredFieldValidator>
             <br /> 
            <label runat="server">DepartmentID: </label> 
             <asp:DropDownList  runat="server" ID="DeptID" Height="16px" style="margin-left: 85px" Width="126px" AppendDataBoundItems="true" >
               
             </asp:DropDownList>
         
             <br />
            <label runat="server">JobTitleID: </label> 
              <asp:DropDownList runat="server" ID="JobTitleID" Height="17px" style="margin-left: 111px" Width="122px" AppendDataBoundItems="true">
                 
             </asp:DropDownList>
       
            
             <br />
            <label runat="server">Active: 
            True<asp:RadioButton ID="rdActive1" runat="server" GroupName="rdActive" Checked="true"  />
            False<asp:RadioButton ID="rdActive0" runat="server"  GroupName="rdActive"/>
            </label> 
                <br />
            <label runat="server">FirstName:  </label> 
             <asp:TextBox ID="FirstName" runat="server" style="margin-left: 113px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName"  ForeColor="Red" ErrorMessage="Vui lòng nhập FirstName"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ValidationExpression="^[a-z A-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+$" ControlToValidate="FirstName" ForeColor="Red" ErrorMessage="Tên không được có chữ số và kí tự đặc biệt"></asp:RegularExpressionValidator>
         
            <br />
              <label runat="server">LastName:  </label> 
             <asp:TextBox ID="LastName" runat="server" style="margin-left: 112px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="LastName"  ForeColor="Red" ErrorMessage="Vui lòng nhập LastName"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator runat="server" ValidationExpression="^[a-z A-Z_ÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚĂĐĨŨƠàáâãèéêìíòóôõùúăđĩũơƯĂẠẢẤẦẨẪẬẮẰẲẴẶẸẺẼỀỀỂưăạảấầẩẫậắằẳẵặẹẻẽềềểỄỆỈỊỌỎỐỒỔỖỘỚỜỞỠỢỤỦỨỪễệỉịọỏốồổỗộớờởỡợụủứừỬỮỰỲỴÝỶỸửữựỳỵỷỹ]+$" ControlToValidate="LastName" ForeColor="Red" ErrorMessage="Tên không được có chữ số và kí tự đặc biệt"></asp:RegularExpressionValidator>
         
            <br />
               <label runat="server">DOB:  </label> 
             <asp:TextBox ID="DOB" runat="server" TextMode="Date" style="margin-left: 142px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="DOB"  ForeColor="Red" ErrorMessage="Vui lòng nhập DOB"></asp:RequiredFieldValidator>
            
            <br />
              <label runat="server">Address:  </label> 
             <asp:TextBox ID="Address" runat="server" style="margin-left: 126px"></asp:TextBox>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="Address"  ForeColor="Red" ErrorMessage="Vui lòng nhập Address"></asp:RequiredFieldValidator>
        
            <br />
             <label runat="server">Gender: 
            <asp:RadioButton ID="RadioButtonGender1" runat="server" GroupName="rdGender" Checked="true" />Nam
            <asp:RadioButton ID="RadioButtonGender2" runat="server"  GroupName="rdGender"/>Nữ
            </label> 
                <br />
              <label runat="server">NationalityID: </label> 
              <asp:DropDownList runat="server" ID="NationalityID" style="margin-left: 96px" Width="127px" AppendDataBoundItems="true">
               
             </asp:DropDownList>
          
                <br />
            <asp:Button ID="btnAdd"  runat="server" Text="Add" OnClick="btnAdd_Click" Height="38px" style="margin-top: 35px" Width="50px" />  
          
         
          
            <br />
            
            <a href="Search.aspx">Tìm Kiếm </a>
            
          
        <asp:GridView ID="gvEmp" runat="server" Height="271px" style="text-align:center;margin-top: 99px" Width="1264px" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="false" AllowPaging="True" AllowSorting="True" OnPageIndexChanging="gvEmp_PageIndexChanging" PageSize="10" >
                <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
                <Columns>
                    <asp:BoundField HeaderText="EmpID" DataField="EmpID" />
                    <asp:BoundField HeaderText="EmpCode" DataField="EmpCode"/>
                    <asp:BoundField HeaderText="JoinDate" DataFormatString="{0:dd/MM/yyyy}" DataField="JoinDate"/>
                    <asp:BoundField HeaderText="LSDeptID" DataField="LSDeptID" />
                    <asp:BoundField HeaderText="LSJobTitleID" DataField="LSJobTitleID"/>
                    <asp:BoundField HeaderText="Active"  DataField="Active"/>
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
