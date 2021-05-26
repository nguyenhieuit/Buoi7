<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="kiemloi.aspx.cs" Inherits="Buoi7.kiemloi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function fnKiemTraSoChan(source, args) {
            args.IsValid = (args.Value % 2 == 0);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" cellpadding="5" cellspacing="0">
            <tr>
                <td>Số chẵn</td>
                <td>
                    <asp:TextBox ID="txt_sochan" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:CustomValidator ID="kt_sochan" runat="server"
                        ClientValidationFunction="fnKiemTraSoChan" ControlToValidate="txt_sochan"
                        Display="Dynamic" ErrorMessage="Vui lòng nhập số chẵn"
                        ValidateEmptyText="True" OnServerValidate="CustomValidator1_ServerValidate">
                    </asp:CustomValidator>
                </td>
            </tr>
            </table>
    </form>
</body>
</html>
