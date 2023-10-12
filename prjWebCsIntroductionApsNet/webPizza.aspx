<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webPizza.aspx.cs" Inherits="prjWebCsIntroductionApsNet.webPizza" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #800000;
        }
        body{
            background-color:burlywood;
        }
        .publicite{
            color:white;
            font-weight:bold;
            background-color:red;
        }
        .grandtableau {
            width: 800px;
        }
        .auto-style2 {
            width: 100%;
        }
        .textbox{
            width:200px;
        }
        td{
            vertical-align:top;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 class="auto-style1">TECCART PIZZA HURTS</h1>
        </div>
    <hr />
    <marquee class="publicite">
        Commander les meilleures pizzas du monde avec des ingredients extraordinaires 
        comme du bacon halal, peperoni kacher, biere halal et du fromage de cochon
    </marquee>
    <hr />
        <p>
            &nbsp;</p>
        <table align="center" class="grandtableau">
            <tr>
                <td rowspan="2">
                    <asp:Panel ID="panPizza" runat="server" BackColor="#F1E2CF" Font-Bold="True" GroupingText="Informations sur la Pizza " Height="100%" Width="50%">
                        <table class="auto-style2">
                            <tr>
                                <td>Telephone : </td>
                                <td>
                                    <asp:TextBox ID="txtTelephone" runat="server" CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Nom Complet :</td>
                                <td>
                                    <asp:TextBox ID="txtNom" runat="server" CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="lblLivraison" runat="server" Font-Bold="True" Text="Pour livraison ?  :"></asp:Label>
                                </td>
                                <td>
                                    <asp:CheckBox ID="chkLivraison" runat="server" Font-Bold="True" AutoPostBack="True" OnCheckedChanged="chkLivraison_CheckedChanged" />
                                </td>
                            </tr>
                            <tr>
                                <td style="vertical-align:top">
                                    <asp:Label ID="lblAdresse" runat="server" Font-Bold="True" Text="Adresse livraison :"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAdresse" runat="server" Font-Bold="True" Height="82px" TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>Choisir Pizza :</td>
                                <td>
                                    <asp:DropDownList ID="cboPizzas" runat="server" CssClass="textbox" AutoPostBack="True" >
                                    
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>Choisir Taille :</td>
                                <td><asp:ListBox ID="lstTailles" runat="server" CssClass="textbox" AutoPostBack="true" >
                                     </asp:ListBox> </td>
                            </tr>
                            <tr>
                                <td>Choisir Garnitures :</td>
                                <td>
                                    <asp:CheckBoxList ID="lstChkGarnitures" runat="server" Font-Bold="true" AutoPostBack="true"></asp:CheckBoxList></td>
                            </tr>
                            <tr>
                                <td>Choisir Croute : </td>
                                <td>
                                    <asp:RadioButtonList ID="lstRadCroutes" runat="server" ></asp:RadioButtonList>
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
                <td style="vertical-align:top">
                    <asp:Panel ID="panPrix" runat="server" Width="100%" Height="200px" BackColor="#F1E2CF" Font-Bold="True" GroupingText="Informations sur le Prix" >
                        <asp:Literal ID="litPrix" runat="server"></asp:Literal>
                        <br />
                        <div style="text-align:center">
                          <asp:Button ID="btnCommander" Text="Commander" Font-Bold="true" 
                              width="150px" runat="server" OnClick="btnCommander_Click" />
                        </div>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
               
                <td>
                    <asp:Panel ID="panCommande" runat="server" Width="100%" 
                        Height="200px" BackColor="#F1E2CF" Font-Bold="True" 
                        GroupingText="Informations sur la Commande" >
                        <asp:Literal ID="litCommande" runat="server"></asp:Literal>
                    </asp:Panel>
                 </td>
            </tr>
        </table>
    </form>
    </body>
</html>
