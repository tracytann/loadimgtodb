<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="1.aspx.cs" Inherits="APSLR1._1" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
    <title></title>
</head>
<body>
    <header><h1>Задание №1 по дисциплине «Программирование в ASP.NET»</h1></header>
    <nav id="nav1" runat="server">
        <ul class="navigation">
             <li id="li1"><a id="A1" href="Index.aspx">&nbsp; &nbsp;Главная&nbsp; &nbsp;</a></li> 
            <li id="li2"><a id="A2" href="1.aspx">Вывод данных</a></li>
            <li id="li3"><a id="A3" href="lr3.aspx">Графика</a></li>
            <li id="li4"><a id="A4" href="4.aspx">Отправка формы</a></li>
            <li id="li5"><a id="A5" href="6.aspx">Загрузка изображения в БД</a></li>
            <li id="li6"><a id="A6" href="7.aspx">Выгрузка изображения из БД</a></li>
            <li id="li7"><a id="A7" href="8.aspx">График</a></li>
        </ul>
    </nav>
        <section>
            <div id="block" runat="server">
                <fildset><legend>Поэты</legend>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td><asp:ListBox ID="ListBox1" runat="server" Height="160px" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged" AutoPostBack="True" Width="180px"></asp:ListBox>&nbsp;</td>
                 <td><asp:TextBox ID="TextBox1" runat="server" Height="160px" Width="310px" TextMode="MultiLine" Font-Bold="False" ForeColor="Crimson" OnTextChanged="TextBox1_TextChanged"></asp:TextBox></td>
                  <td><asp:Image ID="Image1" runat="server" Height="160px" ImageAlign="Middle" Width="120px" BorderStyle="Dotted" /></td>                </tr>
           
        </table>
        <div>
                   <td><asp:Button ID="Button1" runat="server" Text="Смотреть самостоятельное задание" OnClick="Button1_Click" /></td>
            </div>
    </form>

                </fildset>
           </div>
        </section>
    <footer><h2>группа 214.41 студент Рамунис С.Ю</h2></footer>
</body>
</html>
