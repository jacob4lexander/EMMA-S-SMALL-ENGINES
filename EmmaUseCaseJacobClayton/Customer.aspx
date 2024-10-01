<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Customer.aspx.cs" Inherits="EmmaUseCaseJacobClayton.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title">
            <asp:Label ID="labelCustomer" runat="server" Text="SELECT A CUSTOMER:"></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="CustomerDataSource" DataTextField="custLast" DataValueField="id" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            </asp:DropDownList>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" DataSourceID="CustomerDataSource">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    custFirst:
                    <asp:TextBox ID="custFirstTextBox" runat="server" Text='<%# Bind("custFirst") %>' />
                    <br />
                    custLast:
                    <asp:TextBox ID="custLastTextBox" runat="server" Text='<%# Bind("custLast") %>' />
                    <br />
                    custPhone:
                    <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                    <br />
                    custAddress:
                    <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                    <br />
                    custCity:
                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custPostal:
                    <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                    <br />
                    custEmail:
                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    custFirst:
                    <asp:TextBox ID="custFirstTextBox" runat="server" Text='<%# Bind("custFirst") %>' />
                    <br />
                    custLast:
                    <asp:TextBox ID="custLastTextBox" runat="server" Text='<%# Bind("custLast") %>' />
                    <br />
                    custPhone:
                    <asp:TextBox ID="custPhoneTextBox" runat="server" Text='<%# Bind("custPhone") %>' />
                    <br />
                    custAddress:
                    <asp:TextBox ID="custAddressTextBox" runat="server" Text='<%# Bind("custAddress") %>' />
                    <br />
                    custCity:
                    <asp:TextBox ID="custCityTextBox" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custPostal:
                    <asp:TextBox ID="custPostalTextBox" runat="server" Text='<%# Bind("custPostal") %>' />
                    <br />
                    custEmail:
                    <asp:TextBox ID="custEmailTextBox" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    custFirst:
                    <asp:Label ID="custFirstLabel" runat="server" Text='<%# Bind("custFirst") %>' />
                    <br />
                    custLast:
                    <asp:Label ID="custLastLabel" runat="server" Text='<%# Bind("custLast") %>' />
                    <br />
                    custPhone:
                    <asp:Label ID="custPhoneLabel" runat="server" Text='<%# Bind("custPhone") %>' />
                    <br />
                    custAddress:
                    <asp:Label ID="custAddressLabel" runat="server" Text='<%# Bind("custAddress") %>' />
                    <br />
                    custCity:
                    <asp:Label ID="custCityLabel" runat="server" Text='<%# Bind("custCity") %>' />
                    <br />
                    custPostal:
                    <asp:Label ID="custPostalLabel" runat="server" Text='<%# Bind("custPostal") %>' />
                    <br />
                    custEmail:
                    <asp:Label ID="custEmailLabel" runat="server" Text='<%# Bind("custEmail") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:Label ID="labelEquip" runat="server" Text="EQUIPMENT INFORMATION"></asp:Label>
            <asp:FormView ID="FormView2" runat="server" DataKeyNames="id,Expr1,Expr2" DataSourceID="ObjectDataSource2">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    equModel:
                    <asp:TextBox ID="equModelTextBox" runat="server" Text='<%# Bind("equModel") %>' />
                    <br />
                    equSerial:
                    <asp:TextBox ID="equSerialTextBox" runat="server" Text='<%# Bind("equSerial") %>' />
                    <br />
                    custID:
                    <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                    <br />
                    equtypeID:
                    <asp:TextBox ID="equtypeIDTextBox" runat="server" Text='<%# Bind("equtypeID") %>' />
                    <br />
                    equManuID:
                    <asp:TextBox ID="equManuIDTextBox" runat="server" Text='<%# Bind("equManuID") %>' />
                    <br />
                    manName:
                    <asp:TextBox ID="manNameTextBox" runat="server" Text='<%# Bind("manName") %>' />
                    <br />
                    eqtType:
                    <asp:TextBox ID="eqtTypeTextBox" runat="server" Text='<%# Bind("eqtType") %>' />
                    <br />
                    Expr1:
                    <asp:Label ID="Expr1Label1" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    Expr2:
                    <asp:Label ID="Expr2Label1" runat="server" Text='<%# Eval("Expr2") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    equModel:
                    <asp:TextBox ID="equModelTextBox" runat="server" Text='<%# Bind("equModel") %>' />
                    <br />
                    equSerial:
                    <asp:TextBox ID="equSerialTextBox" runat="server" Text='<%# Bind("equSerial") %>' />
                    <br />
                    custID:
                    <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
                    <br />
                    equtypeID:
                    <asp:TextBox ID="equtypeIDTextBox" runat="server" Text='<%# Bind("equtypeID") %>' />
                    <br />
                    equManuID:
                    <asp:TextBox ID="equManuIDTextBox" runat="server" Text='<%# Bind("equManuID") %>' />
                    <br />
                    manName:
                    <asp:TextBox ID="manNameTextBox" runat="server" Text='<%# Bind("manName") %>' />
                    <br />
                    eqtType:
                    <asp:TextBox ID="eqtTypeTextBox" runat="server" Text='<%# Bind("eqtType") %>' />
                    <br />


                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    equModel:
                    <asp:Label ID="equModelLabel" runat="server" Text='<%# Bind("equModel") %>' />
                    <br />
                    equSerial:
                    <asp:Label ID="equSerialLabel" runat="server" Text='<%# Bind("equSerial") %>' />
                    <br />
                    custID:
                    <asp:Label ID="custIDLabel" runat="server" Text='<%# Bind("custID") %>' />
                    <br />
                    equtypeID:
                    <asp:Label ID="equtypeIDLabel" runat="server" Text='<%# Bind("equtypeID") %>' />
                    <br />
                    equManuID:
                    <asp:Label ID="equManuIDLabel" runat="server" Text='<%# Bind("equManuID") %>' />
                    <br />
                    manName:
                    <asp:Label ID="manNameLabel" runat="server" Text='<%# Bind("manName") %>' />
                    <br />
                    eqtType:
                    <asp:Label ID="eqtTypeLabel" runat="server" Text='<%# Bind("eqtType") %>' />
                    <br />
                    Expr1:
                    <asp:Label ID="Expr1Label" runat="server" Text='<%# Eval("Expr1") %>' />
                    <br />
                    Expr2:
                    <asp:Label ID="Expr2Label" runat="server" Text='<%# Eval("Expr2") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:Label ID="labelOrder" runat="server" Text="ORDER INFORMATION"></asp:Label>
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="id,Expr1,Expr2" DataSourceID="ObjectDataSource3">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    ordNumber:
                    <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                    <br />
                    ordDate:
                    <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                    <br />
                    ordPaid:
                    <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Bind("ordPaid") %>' />
                    <br />
                    paymentID:
                    <asp:TextBox ID="paymentIDTextBox" runat="server" Text='<%# Bind("paymentID") %>' />
                    <br />
                    custID:
                    <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
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
                    Expr2:
                    <asp:Label ID="Expr2Label1" runat="server" Text='<%# Eval("Expr2") %>' />
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
                    Expr3:
                    <asp:TextBox ID="Expr3TextBox" runat="server" Text='<%# Bind("Expr3") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    ordNumber:
                    <asp:TextBox ID="ordNumberTextBox" runat="server" Text='<%# Bind("ordNumber") %>' />
                    <br />
                    ordDate:
                    <asp:TextBox ID="ordDateTextBox" runat="server" Text='<%# Bind("ordDate") %>' />
                    <br />
                    ordPaid:
                    <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Bind("ordPaid") %>' />
                    <br />
                    paymentID:
                    <asp:TextBox ID="paymentIDTextBox" runat="server" Text='<%# Bind("paymentID") %>' />
                    <br />
                    custID:
                    <asp:TextBox ID="custIDTextBox" runat="server" Text='<%# Bind("custID") %>' />
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
                    Expr3:
                    <asp:TextBox ID="Expr3TextBox" runat="server" Text='<%# Bind("Expr3") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    ordNumber:
                    <asp:Label ID="ordNumberLabel" runat="server" Text='<%# Bind("ordNumber") %>' />
                    <br />
                    ordDate:
                    <asp:Label ID="ordDateLabel" runat="server" Text='<%# Bind("ordDate") %>' />
                    <br />
                    ordPaid:
                    <asp:CheckBox ID="ordPaidCheckBox" runat="server" Checked='<%# Bind("ordPaid") %>' Enabled="false" />
                    <br />
                    paymentID:
                    <asp:Label ID="paymentIDLabel" runat="server" Text='<%# Bind("paymentID") %>' />
                    <br />
                    custID:
                    <asp:Label ID="custIDLabel" runat="server" Text='<%# Bind("custID") %>' />
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
                    Expr2:
                    <asp:Label ID="Expr2Label" runat="server" Text='<%# Eval("Expr2") %>' />
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
                    Expr3:
                    <asp:Label ID="Expr3Label" runat="server" Text='<%# Bind("Expr3") %>' />
                    <br />

                </ItemTemplate>
            </asp:FormView>
            <asp:ObjectDataSource ID="CustomerDataSource" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" OnSelecting="ObjectDataSource1_Selecting" SelectMethod="GetData" TypeName="EmmaUseCaseLibrary.EmmasDataSetTableAdapters.customerTableAdapter" UpdateMethod="Update">
                <DeleteParameters>
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_custFirst" Type="String" />
                    <asp:Parameter Name="Original_custLast" Type="String" />
                    <asp:Parameter Name="Original_custPhone" Type="String" />
                    <asp:Parameter Name="Original_custAddress" Type="String" />
                    <asp:Parameter Name="Original_custCity" Type="String" />
                    <asp:Parameter Name="Original_custPostal" Type="String" />
                    <asp:Parameter Name="Original_custEmail" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="custFirst" Type="String" />
                    <asp:Parameter Name="custLast" Type="String" />
                    <asp:Parameter Name="custPhone" Type="String" />
                    <asp:Parameter Name="custAddress" Type="String" />
                    <asp:Parameter Name="custCity" Type="String" />
                    <asp:Parameter Name="custPostal" Type="String" />
                    <asp:Parameter Name="custEmail" Type="String" />
                    <asp:Parameter Name="Original_id" Type="Int32" />
                    <asp:Parameter Name="Original_custFirst" Type="String" />
                    <asp:Parameter Name="Original_custLast" Type="String" />
                    <asp:Parameter Name="Original_custPhone" Type="String" />
                    <asp:Parameter Name="Original_custAddress" Type="String" />
                    <asp:Parameter Name="Original_custCity" Type="String" />
                    <asp:Parameter Name="Original_custPostal" Type="String" />
                    <asp:Parameter Name="Original_custEmail" Type="String" />
                </UpdateParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaUseCaseLibrary.EmmasDataSetTableAdapters.EquipmentLookupTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaUseCaseLibrary.EmmasDataSetTableAdapters.ServiceCustomerLookupTableAdapter">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="Param1" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:ObjectDataSource>
</h2>
    </main>
</asp:Content>
