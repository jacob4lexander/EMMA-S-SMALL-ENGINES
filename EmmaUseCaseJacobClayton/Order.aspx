<%@ Page Title="Order" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="EmmaUseCaseJacobClayton.Order" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">
            <asp:Label ID="labelOrder" runat="server" Text="SELECT AN ORDER:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="OrderDataSource" DataTextField="onordInvoiceNum" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="id" DataSourceID="OrderDataSource">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    onordInvoiceNum:
                    <asp:TextBox ID="onordInvoiceNumTextBox" runat="server" Text='<%# Bind("onordInvoiceNum") %>' />
                    <br />
                    onordArriveDate:
                    <asp:TextBox ID="onordArriveDateTextBox" runat="server" Text='<%# Bind("onordArriveDate") %>' />
                    <br />
                    onordNumInOrder:
                    <asp:TextBox ID="onordNumInOrderTextBox" runat="server" Text='<%# Bind("onordNumInOrder") %>' />
                    <br />
                    onordPrice:
                    <asp:TextBox ID="onordPriceTextBox" runat="server" Text='<%# Bind("onordPrice") %>' />
                    <br />
                    inventoryID:
                    <asp:TextBox ID="inventoryIDTextBox" runat="server" Text='<%# Bind("inventoryID") %>' />
                    <br />
                    prodorderID:
                    <asp:TextBox ID="prodorderIDTextBox" runat="server" Text='<%# Bind("prodorderID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    onordInvoiceNum:
                    <asp:TextBox ID="onordInvoiceNumTextBox" runat="server" Text='<%# Bind("onordInvoiceNum") %>' />
                    <br />
                    onordArriveDate:
                    <asp:TextBox ID="onordArriveDateTextBox" runat="server" Text='<%# Bind("onordArriveDate") %>' />
                    <br />
                    onordNumInOrder:
                    <asp:TextBox ID="onordNumInOrderTextBox" runat="server" Text='<%# Bind("onordNumInOrder") %>' />
                    <br />
                    onordPrice:
                    <asp:TextBox ID="onordPriceTextBox" runat="server" Text='<%# Bind("onordPrice") %>' />
                    <br />
                    inventoryID:
                    <asp:TextBox ID="inventoryIDTextBox" runat="server" Text='<%# Bind("inventoryID") %>' />
                    <br />
                    prodorderID:
                    <asp:TextBox ID="prodorderIDTextBox" runat="server" Text='<%# Bind("prodorderID") %>' />
                    <br />

                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    onordInvoiceNum:
                    <asp:Label ID="onordInvoiceNumLabel" runat="server" Text='<%# Bind("onordInvoiceNum") %>' />
                    <br />
                    onordArriveDate:
                    <asp:Label ID="onordArriveDateLabel" runat="server" Text='<%# Bind("onordArriveDate") %>' />
                    <br />
                    onordNumInOrder:
                    <asp:Label ID="onordNumInOrderLabel" runat="server" Text='<%# Bind("onordNumInOrder") %>' />
                    <br />
                    onordPrice:
                    <asp:Label ID="onordPriceLabel" runat="server" Text='<%# Bind("onordPrice") %>' />
                    <br />
                    inventoryID:
                    <asp:Label ID="inventoryIDLabel" runat="server" Text='<%# Bind("inventoryID") %>' />
                    <br />
                    prodorderID:
                    <asp:Label ID="prodorderIDLabel" runat="server" Text='<%# Bind("prodorderID") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />

                </ItemTemplate>
            </asp:FormView>
            <asp:ObjectDataSource ID="OrderDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" OnSelecting="ObjectDataSource1_Selecting" SelectMethod="GetData" TypeName="EmmaUseCaseLibrary.EmmasDataSetTableAdapters.on_orderTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_onordInvoiceNum" Type="String" />
                    <asp:Parameter Name="Original_onordArriveDate" Type="DateTime" />
                    <asp:Parameter Name="Original_onordNumInOrder" Type="Int32" />
                    <asp:Parameter Name="Original_onordPrice" Type="Decimal" />
                    <asp:Parameter Name="Original_inventoryID" Type="Int32" />
                    <asp:Parameter Name="Original_prodorderID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="onordInvoiceNum" Type="String" />
                    <asp:Parameter Name="onordArriveDate" Type="DateTime" />
                    <asp:Parameter Name="onordNumInOrder" Type="Int32" />
                    <asp:Parameter Name="onordPrice" Type="Decimal" />
                    <asp:Parameter Name="inventoryID" Type="Int32" />
                    <asp:Parameter Name="prodorderID" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="onordInvoiceNum" Type="String" />
                    <asp:Parameter Name="onordArriveDate" Type="DateTime" />
                    <asp:Parameter Name="onordNumInOrder" Type="Int32" />
                    <asp:Parameter Name="onordPrice" Type="Decimal" />
                    <asp:Parameter Name="inventoryID" Type="Int32" />
                    <asp:Parameter Name="prodorderID" Type="Int32" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_onordInvoiceNum" Type="String" />
                    <asp:Parameter Name="Original_onordArriveDate" Type="DateTime" />
                    <asp:Parameter Name="Original_onordNumInOrder" Type="Int32" />
                    <asp:Parameter Name="Original_onordPrice" Type="Decimal" />
                    <asp:Parameter Name="Original_inventoryID" Type="Int32" />
                    <asp:Parameter Name="Original_prodorderID" Type="Int32" />
                </UpdateParameters>
            </asp:ObjectDataSource>
</h2>
    </main>
</asp:Content>
