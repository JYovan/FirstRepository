<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="pruebas.WebForm1" %>

<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <title>Test</title>
    <script src="js/jquery-1.11.1.min.js"></script>
    <style>
        .xCustomComboBox .x-form-text {
            color: red;
            padding: 4px 6px 3px 6px;
            background: white repeat-x 0 0;
            border-width: 1px;
            border-style: solid;
            border-color: silver #d9d9d9 #d9d9d9;
            height: 24px;
            line-height: 15px;
        }
    </style>
    <script>
        $(document).ready(function () {
            $("#resultado").html("Listo");
            Ext.Msg.alert('Error', 'Please select an Item' + Ext.select("cmbMov").value);
            Ext.create('Ext.btnOk', {
                text: 'Click Me',
                renderTo: Ext.getBody(),
                listeners: {
                    click: function () {
                        Ext.Msg.alert('I was clicked!');
                    }
                }
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ext:ResourceManager ID="ResourceManager1" runat="server">
            </ext:ResourceManager>

            <ext:Label ID="Label1" runat="server" Text="hdwfysd">
            </ext:Label>
            <ext:Button ID="btnOk" runat="server" Text="Submit">
            </ext:Button>
            <ext:ComboBox ID="ComboBox1" runat="server" Cls="xCustomComboBox" Text="seelleccioa" Width="800"></ext:ComboBox>
            <ext:ComboBox
                ID="cmbMov"
                runat="server"
                Width="200"
                Margins="0 3 0 0"
                Editable="false"
                AutoFocus="true"
                AllowBlank="false">
                <Items>
                    <ext:ListItem Index="0" Text="Inicio" Value="Inicio" />
                    <ext:ListItem Index="0" Text="Captura" Value="Captura" />
                    <ext:ListItem Index="0" Text="Fin" Value="Fin" />
                </Items>
            </ext:ComboBox>
            <div id="resultado"></div>

        </div>
    </form>
</body>
</html>