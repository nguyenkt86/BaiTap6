<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Exercise.aspx.cs" Inherits="Exercise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 197px;
            height: 30px;
        }
        .auto-style3 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table style="height: 76px;">
            <tr>
                <td class="auto-style2">Mã phòng</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMaPhong" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style3">
                    <asp:Button ID="BtnXem" runat="server" OnClick="BtnXem_Click" style="margin-left: 0px" Text="Xem" />
                </td>
            </tr>
        </table>
        <div>
            <asp:GridView ID="GridView1" runat="server" Width="327px">
            </asp:GridView>

        </div>
    </div>
    </form>
</body>
</html>
