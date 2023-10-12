<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webControlesValidation.aspx.cs" Inherits="prjWebCsIntroductionApsNet.webControlesValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    h1{text-align:center;}
    table{
        width:400px;
        background-color:chartreuse;
          font-weight:bold;
          border:2px solid;
          border-radius:15px;
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>LES CONTROLES DE VALIDATION ASP.NET</h1>
            <hr style="width:600px" />

            <table align="center">
                <tr>
                    <td>Entrer Nom complet : </td>
                    <td>
                        <asp:TextBox ID="txtNom" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>Entrer Mot de passe : </td>
                    <td>
                        <asp:TextBox ID="txtMot2passe" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td>Confirmer Mot passe : </td>
                    <td>
                        <asp:TextBox ID="txtMot2passe2" runat="server" Width="150px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" ControlToValidate="100" Operator="GreaterThan" Type="Integer"></asp:CompareValidator></td>

                </tr>
                <tr>
                    <td> </td>
                    <td>
                        
                    </td>
                    <td></td>

                </tr>
                <tr>
                    <td> </td>
                    <td>
                        </td>
                    <td></td>

                </tr>
                <tr>
                    <td colspan="3" style="text-align:center">
                        <asp:Button ID="btnInscrire" Text="S'inscrire" runat="server"
                            Width="100px" Font-Bold="true" OnClick="btnInscrire_Click" />
                    </td>
                    

                </tr>
                <tr>
                    <td> </td>
                    <td>
                       
                    </td>
                    <td></td>

                </tr>

            </table>


        </div>
    </form>
</body>
</html>
