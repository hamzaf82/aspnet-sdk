﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadGridWithNeedDataSourceAndOpenAccess.aspx.cs"
Inherits="RadGridWithNeedDataSourceAndOpenAccess" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<title></title>
	</head>
	<body>
		<form id="form1" runat="server">
			<telerik:RadScriptManager ID="RadScriptManager1" runat="server">
				<Scripts>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js">
					</asp:ScriptReference>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js">
					</asp:ScriptReference>
					<asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQueryInclude.js">
					</asp:ScriptReference>
				</Scripts>
			</telerik:RadScriptManager>
			<div>
				<telerik:RadGrid ID="RadGrid1" runat="server" ShowGroupPanel="true" OnNeedDataSource="RadGrid1_NeedDataSource"
								 OnGroupsChanging="RadGrid1_GroupsChanging" OnDeleteCommand="RadGrid1_DeleteCommand"
								 OnInsertCommand="RadGrid1_InsertCommand" OnUpdateCommand="RadGrid1_UpdateCommand"
								 CellSpacing="0" AllowPaging="True" AutoGenerateEditColumn="True" AutoGenerateColumns="true"
								 AllowCustomPaging="true" AutoGenerateDeleteColumn="true" GridLines="None">
					<MasterTableView AutoGenerateColumns="false" DataKeyNames="OrderID" CommandItemDisplay="Top">
						<CommandItemSettings ExportToPdfText="Export to PDF"></CommandItemSettings>
						<RowIndicatorColumn Visible="True" FilterControlAltText="Filter RowIndicator column">
							<HeaderStyle Width="20px"></HeaderStyle>
						</RowIndicatorColumn>
						<ExpandCollapseColumn Visible="True" FilterControlAltText="Filter ExpandColumn column">
							<HeaderStyle Width="20px"></HeaderStyle>
						</ExpandCollapseColumn>
						<Columns>
							<telerik:GridBoundColumn DataField="OrderID" FilterControlAltText="Filter OrderID column"
													 HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" UniqueName="OrderID"
													 DataType="System.Int32">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="CustomerID" FilterControlAltText="Filter CustomerID column"
													 ReadOnly="true" HeaderText="CustomerID" SortExpression="CustomerID" UniqueName="CustomerID">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="OrderDate" FilterControlAltText="Filter OrderDate column"
													 HeaderText="OrderDate" SortExpression="OrderDate" UniqueName="OrderDate" DataType="System.DateTime">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="RequiredDate" FilterControlAltText="Filter RequiredDate column"
													 HeaderText="RequiredDate" SortExpression="RequiredDate" UniqueName="RequiredDate"
													 DataType="System.DateTime">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ShippedDate" FilterControlAltText="Filter ShippedDate column"
													 HeaderText="ShippedDate" SortExpression="ShippedDate" UniqueName="ShippedDate"
													 DataType="System.DateTime">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="Freight" FilterControlAltText="Filter Freight column"
													 HeaderText="Freight" SortExpression="Freight" UniqueName="Freight" DataType="System.Decimal">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ShipName" FilterControlAltText="Filter ShipName column"
													 HeaderText="ShipName" SortExpression="ShipName" UniqueName="ShipName">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ShipAddress" FilterControlAltText="Filter ShipAddress column"
													 HeaderText="ShipAddress" SortExpression="ShipAddress" UniqueName="ShipAddress">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ShipCity" FilterControlAltText="Filter ShipCity column"
													 HeaderText="ShipCity" SortExpression="ShipCity" UniqueName="ShipCity">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ShipRegion" FilterControlAltText="Filter ShipRegion column"
													 HeaderText="ShipRegion" SortExpression="ShipRegion" UniqueName="ShipRegion">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ShipPostalCode" FilterControlAltText="Filter ShipPostalCode column"
													 HeaderText="ShipPostalCode" SortExpression="ShipPostalCode" UniqueName="ShipPostalCode">
							</telerik:GridBoundColumn>
							<telerik:GridBoundColumn DataField="ShipCountry" FilterControlAltText="Filter ShipCountry column"
													 HeaderText="ShipCountry" SortExpression="ShipCountry" UniqueName="ShipCountry">
							</telerik:GridBoundColumn>
						</Columns>
						<EditFormSettings>
							<EditColumn FilterControlAltText="Filter EditCommandColumn column">
							</EditColumn>
						</EditFormSettings>
						<PagerStyle PageSizeControlType="RadComboBox" AlwaysVisible="true"></PagerStyle>
					</MasterTableView>
					<ClientSettings AllowDragToGroup="true">
					</ClientSettings>
					<PagerStyle PageSizeControlType="RadComboBox"></PagerStyle>
					<FilterMenu EnableImageSprites="False">
					</FilterMenu>
				</telerik:RadGrid>
			</div>
		</form>
	</body>
</html>
