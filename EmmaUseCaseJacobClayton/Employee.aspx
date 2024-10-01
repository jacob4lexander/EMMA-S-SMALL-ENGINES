<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="EmmaUseCaseJacobClayton.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="labelEmployee" runat="server" Text="SELECT AN EMPLOYEE:"></asp:Label>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource3" DataTextField="empLast" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="85px">
    </asp:DropDownList>
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="ObjectDataSource3" >
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            empFirst:
            <asp:TextBox ID="empFirstTextBox" runat="server" Text='<%# Bind("empFirst") %>' />
            <br />
            empLast:
            <asp:TextBox ID="empLastTextBox" runat="server" Text='<%# Bind("empLast") %>' />
            <br />
            posID:
            <asp:TextBox ID="posIDTextBox" runat="server" Text='<%# Bind("posID") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
&nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            empFirst:
            <asp:TextBox ID="empFirstTextBox" runat="server" Text='<%# Bind("empFirst") %>' />
            <br />
            empLast:
            <asp:TextBox ID="empLastTextBox" runat="server" Text='<%# Bind("empLast") %>' />
            <br />
            posID:
            <asp:TextBox ID="posIDTextBox" runat="server" Text='<%# Bind("posID") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            empFirst:
            <asp:Label ID="empFirstLabel" runat="server" Text='<%# Bind("empFirst") %>' />
            <br />
            empLast:
            <asp:Label ID="empLastLabel" runat="server" Text='<%# Bind("empLast") %>' />
            <br />
            posID:
            <asp:Label ID="posIDLabel" runat="server" Text='<%# Bind("posID") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:Label ID="labelService" runat="server" Text="SERVICE INFORMATION:"></asp:Label>
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="id,Expr1" DataSourceID="ObjectDataSource2">
        <EditItemTemplate>
            id:
            <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
            <br />
            serordDateIn:
            <asp:TextBox ID="serordDateInTextBox" runat="server" Text='<%# Bind("serordDateIn") %>' />
            <br />
            serordDateOut:
            <asp:TextBox ID="serordDateOutTextBox" runat="server" Text='<%# Bind("serordDateOut") %>' />
            <br />
            serordIssue:
            <asp:TextBox ID="serordIssueTextBox" runat="server" Text='<%# Bind("serordIssue") %>' />
            <br />
            serordWarranty:
            <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Bind("serordWarranty") %>' />
            <br />
            receiptID:
            <asp:TextBox ID="receiptIDTextBox" runat="server" Text='<%# Bind("receiptID") %>' />
            <br />
            serviceID:
            <asp:TextBox ID="serviceIDTextBox" runat="server" Text='<%# Bind("serviceID") %>' />
            <br />
            equipID:
            <asp:TextBox ID="equipIDTextBox" runat="server" Text='<%# Bind("equipID") %>' />
            <br />
            empID:
            <asp:TextBox ID="empIDTextBox" runat="server" Text='<%# Bind("empID") %>' />
            <br />
            Expr1:
            <asp:Label ID="Expr1Label1" runat="server" Text='<%# Eval("Expr1") %>' />
            <br />
            serName:
            <asp:TextBox ID="serNameTextBox" runat="server" Text='<%# Bind("serName") %>' />
            <br />
            serDescription:
            <asp:TextBox ID="serDescriptionTextBox" runat="server" Text='<%# Bind("serDescription") %>' />
            <br />
            serPrice:
            <asp:TextBox ID="serPriceTextBox" runat="server" Text='<%# Bind("serPrice") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            serordDateIn:
            <asp:TextBox ID="serordDateInTextBox" runat="server" Text='<%# Bind("serordDateIn") %>' />
            <br />
            serordDateOut:
            <asp:TextBox ID="serordDateOutTextBox" runat="server" Text='<%# Bind("serordDateOut") %>' />
            <br />
            serordIssue:
            <asp:TextBox ID="serordIssueTextBox" runat="server" Text='<%# Bind("serordIssue") %>' />
            <br />
            serordWarranty:
            <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Bind("serordWarranty") %>' />
            <br />
            receiptID:
            <asp:TextBox ID="receiptIDTextBox" runat="server" Text='<%# Bind("receiptID") %>' />
            <br />
            serviceID:
            <asp:TextBox ID="serviceIDTextBox" runat="server" Text='<%# Bind("serviceID") %>' />
            <br />
            equipID:
            <asp:TextBox ID="equipIDTextBox" runat="server" Text='<%# Bind("equipID") %>' />
            <br />
            empID:
            <asp:TextBox ID="empIDTextBox" runat="server" Text='<%# Bind("empID") %>' />
            <br />
            serName:
            <asp:TextBox ID="serNameTextBox" runat="server" Text='<%# Bind("serName") %>' />
            <br />
            serDescription:
            <asp:TextBox ID="serDescriptionTextBox" runat="server" Text='<%# Bind("serDescription") %>' />
            <br />
            serPrice:
            <asp:TextBox ID="serPriceTextBox" runat="server" Text='<%# Bind("serPrice") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            id:
            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
            <br />
            serordDateIn:
            <asp:Label ID="serordDateInLabel" runat="server" Text='<%# Bind("serordDateIn") %>' />
            <br />
            serordDateOut:
            <asp:Label ID="serordDateOutLabel" runat="server" Text='<%# Bind("serordDateOut") %>' />
            <br />
            serordIssue:
            <asp:Label ID="serordIssueLabel" runat="server" Text='<%# Bind("serordIssue") %>' />
            <br />
            serordWarranty:
            <asp:CheckBox ID="serordWarrantyCheckBox" runat="server" Checked='<%# Bind("serordWarranty") %>' Enabled="false" />
            <br />
            receiptID:
            <asp:Label ID="receiptIDLabel" runat="server" Text='<%# Bind("receiptID") %>' />
            <br />
            serviceID:
            <asp:Label ID="serviceIDLabel" runat="server" Text='<%# Bind("serviceID") %>' />
            <br />
            equipID:
            <asp:Label ID="equipIDLabel" runat="server" Text='<%# Bind("equipID") %>' />
            <br />
            empID:
            <asp:Label ID="empIDLabel" runat="server" Text='<%# Bind("empID") %>' />
            <br />
            Expr1:
            <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
            <br />
            serName:
            <asp:Label ID="serNameLabel" runat="server" Text='<%# Bind("serName") %>' />
            <br />
            serDescription:
            <asp:Label ID="serDescriptionLabel" runat="server" Text='<%# Bind("serDescription") %>' />
            <br />
            serPrice:
            <asp:Label ID="serPriceLabel" runat="server" Text='<%# Bind("serPrice") %>' />
            <br />
        </ItemTemplate>
    </asp:FormView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaUseCaseLibrary.EmmasDataSetTableAdapters.ServiceLookupTableAdapter">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaUseCaseLibrary.EmmasDataSetTableAdapters.employeeTableAdapter" UpdateMethod="Update">
        <DeleteParameters>
            <asp:Parameter Name="Original_id" Type="Int32" />
            <asp:Parameter Name="Original_empFirst" Type="String" />
            <asp:Parameter Name="Original_empLast" Type="String" />
            <asp:Parameter Name="Original_posID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="empFirst" Type="String" />
            <asp:Parameter Name="empLast" Type="String" />
            <asp:Parameter Name="posID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="empFirst" Type="String" />
            <asp:Parameter Name="empLast" Type="String" />
            <asp:Parameter Name="posID" Type="Int32" />
            <asp:Parameter Name="Original_id" Type="Int32" />
            <asp:Parameter Name="Original_empFirst" Type="String" />
            <asp:Parameter Name="Original_empLast" Type="String" />
            <asp:Parameter Name="Original_posID" Type="Int32" />
        </UpdateParameters>
    </asp:ObjectDataSource>
</asp:Content>
