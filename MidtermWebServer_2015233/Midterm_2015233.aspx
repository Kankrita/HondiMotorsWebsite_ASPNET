<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Midterm_2015233.aspx.cs" Inherits="MidtermWebServer_2015233.Midterm_2015233" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Midterm Exam - Web Server II</title>
        <style type="text/css">
            .auto-style1
            {
                text-align:center;
                color:black;
                text-decoration:underline;
            }
            .auto-style2
            {
                width:500px;
            }
            .auto-style3
            {
                width:430px;
                font-size:medium;
            }
            .auto-style5
            {
                display: block;
                margin-left: auto;
                margin-right: auto;
                width: 50%;
            }
            .auto-style6
            {
                width:270px;
            }
            .auto-style8
            {
                margin-top:0px;
                border-radius:30px;
                font-weight:bold;
            }

                .auto-style8 fieldset 
                {
                    border:none;
                }

            .auto-style9
            {
                width:580px;
                height:730px;
            }
            .auto-style10
            {
                width:100px;
            }
            .auto-style11
            {
                width:100px;
            }
            .auto-style12
            {
                height:120px;
            }
            .stylePanel 
            {
                border-radius:30px;
                font-weight:bold;
            }

                .stylePanel fieldset
                {
                    border:none;
                }
            
            .tecBoc 
            {
                border-radius:5px;
            }
            .auto-style15
            {
                margin-top:0px;
                border-radius:30px;
            }
                .auto-style15 fieldset 
                {
                    border:none;
                }
            .button 
            {
                align-items:center;  
            }

            .literal 
            {
                font-size:medium;
            }
        </style>
</head>
<body style="background-color:antiquewhite">

    <form id="form1" runat="server" class="auto-style9">
        <div>
            <h1 class="auto-style1">HONDI BUILD & PRICE</h1>
        </div>

        <hr class="auto-style2"/>

        <br />

        <table class="auto-style11">
            <tr style="vertical-align:top;">
                <td class="auto-style12">
                    <asp:Panel ID="panCar" CssClass="stylePanel" BackColor="#818F97" runat ="server" GroupingText="CAR INFORMATIONS" Font-size="Large" Height="100%" Width="450px">
                    <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblCity" runat="server" AccessKey="c" AssociatedControlID="" Text="Your city:"></asp:Label>
                        </td>
                            <td class="auto-style6">
                            <asp:TextBox ID="txtCity" CssClass="tecBoc" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblZip" runat="server" AccessKey="t" AssociatedControlID="txtZip" Text="Zip Code:"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtZip" CssClass="tecBoc" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style10">
                            
                            <asp:Label ID="lblModel" runat="server" Text="Select Car Model:"></asp:Label>
                     
                        </td>
                        <td class="auto-style6">
                            <asp:DropDownList ID="cboModel" CssClass="tecBoc" runat="server" OnSelectedIndexChanged="cboModel_SelectedIndexChanged" AutoPostBack="true" Width="200px">
                                <asp:ListItem>Select a car model: </asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblInterior" runat="server" Text="Interior Color:"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:ListBox ID="listInterior" CssClass="tecBoc" runat="server" AutoPostBack="true" Width="200px"></asp:ListBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblAccessories" runat="server" Text="Accessories:"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:CheckBoxList ID="chkBoxAccessories" CssClass="tecBoc" runat="server" AutoPostBack="true"></asp:CheckBoxList>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblWarranty" runat="server" Text="Warranty:"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:RadioButtonList ID="rdLstWarranty" CssClass="tecBoc" runat="server" AutoPostBack="true"></asp:RadioButtonList>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblContact" runat="server" Text="Dealer contact you by phone?:"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:CheckBox ID="chkContact" runat="server" OnCheckedChanged="chkContact_CheckedChanged" AutoPostBack="true"></asp:CheckBox>
                        </td>
                    </tr>

                    <tr>
                        <td class="auto-style10">
                            <asp:Label ID="lblPhone" runat="server" AccessKey="t" AssociatedControlID="txtPhone" Text="Telephone:"></asp:Label>
                        </td>
                        <td class="auto-style6">
                            <asp:TextBox ID="txtPhone" TextMode="Phone" CssClass="tecBoc" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>

                </table>
                    <br />
                    <br />
                    <br />
                        </asp:Panel>
                    </td>

                    <td class="auto-style12">

                        <asp:Panel ID="panResume" runat="server" BackColor="#818F97" GroupingText="PRICE RESUME" Height="350px" Width="250px" CssClass="auto-style8">
                    
                            <asp:Image ID="imgHondi" runat="server" ImageUrl="~/Hondi.png" Height="80px" Width="90px" CssClass="auto-style5" />
                  
                            <asp:Literal ID="litResume" runat="server"></asp:Literal> 
                         
                            <asp:Button ID="btnConclude" runat="server" Text="Conclude" Style="float:right" OnClick="btnConclude_Click" />
                        </asp:Panel>

                        <br />

                        <asp:Panel ID="panFinalInfo" runat="server" CssClass="auto-style15" GroupingText="FINAL INFORMATION" BackColor="#818F97">
                            <asp:Literal ID="litFinal" runat="server"></asp:Literal>
                        </asp:Panel>
                    
                    </td>    
                    
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr> 
            </table>
        </form>
    </body>
</html>
