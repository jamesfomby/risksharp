﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoadBoard.aspx.cs" Inherits="Risk.LoadBoard" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>RiskSharp</title>
    
    <link href="style/Stylesheet1.css" rel="stylesheet" type="text/css" />
    <style type="text/css"></style>
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Panel ID="Panel1" runat="server" CssClass="map-outer-panel">
                <asp:Panel ID="MapInnerPanel" runat="server" CssClass="map-inner-panel">
                
                    <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
                    
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/img/RiskBoard6.png" 
                       Width="1000"/>
                       
                </asp:Panel>
                </asp:Panel>
                
            
                <asp:Panel ID="StatusPanel" runat="server" CssClass="status-panel">
                    <asp:Label ID="StateLabel" runat="server" Text="Label" ForeColor="White"></asp:Label>
                    <asp:Label ID="TurnStateLabel" runat="server" Text="Label" ForeColor="White"></asp:Label>
                    <asp:Label ID="PlayersLabel" runat="server" Text="Label" ForeColor="White"></asp:Label>
                    
                    <asp:LinkButton ID="NewGameLb" runat="server" OnClick="NewGame">New Game</asp:LinkButton>
                    
                    <asp:TextBox ID="AddPlayerTb" runat="server"></asp:TextBox>
                    <asp:LinkButton ID="AddPlayerLb" runat="server" OnClick="AddPlayer">Add Player</asp:LinkButton>
                    
                    <asp:LinkButton ID="AssignTerrLb" runat="server" OnClick="AssignTerritories">Randomly Assign Territories</asp:LinkButton>
                    
                    <asp:LinkButton ID="EndAttackLb" runat="server" OnClick="EndAttack">Done Attacking</asp:LinkButton>
                    
                    <asp:LinkButton ID="TurnInSetLb" runat="server" OnClick="TurnInCards">Turn In Cards</asp:LinkButton>
                    <asp:LinkButton ID="BonusTroopsLa" runat="server"></asp:LinkButton>
                    
                </asp:Panel>
                
                <asp:PlaceHolder ID="PlaceHolder1" runat="server" Visible="false"></asp:PlaceHolder>
                
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
