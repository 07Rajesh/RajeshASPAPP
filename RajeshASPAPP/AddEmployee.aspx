<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="RajeshASPAPP.AddEmployee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row mt-3">
        <div class="col-6 offset-3">
            <div class="card">
                <div class="card-header">
                    <h4 class="card-title">Add_New Employee</h4>
                </div>
                <div class="card-body">
                    <div class="form-group">
                        <asp:label Text="" ID="lblMessage" runat="server"/>
                    </div>
                    
                     <div class="form-group">
                        <label>Enter Name</label>
                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="form-group">
                        <label>Enter Email</label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="form-group">
                        <label>Gender</label>
                         <asp:DropDownList ID="ddlGender" runat="server" CssClass="form-control">
                             <asp:ListItem Value="-1" Text="Select" Selected="True"></asp:ListItem>
                             <asp:ListItem Value="Female" Text="Female"></asp:ListItem>
                             <asp:ListItem Value="Other" Text="Other"></asp:ListItem>
                              <asp:ListItem Value="Male" Text="Male"></asp:ListItem>
                         </asp:DropDownList>
                    </div>
                      <div class="form-group">
                        <label>Salary</label>
                        <asp:TextBox ID="txtSalary" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                     <div class="form-group">
                    <asp:Button Text="Create" CssClass="btn btn-info" ID="btnAdd" OnClick="btnAdd_Click" runat="server" />
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
