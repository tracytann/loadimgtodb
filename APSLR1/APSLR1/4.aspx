<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="4.aspx.cs" Inherits="APSLR1._4" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
    <title>Авторизация</title>
</head>
<body>
    <header><h1>Лабораторная Работа №4 В4 «Авторизация»</h1></header>
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
                <fildset><legend>Форма для регистрации</legend>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Логин"></asp:Label><br /> 
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator><br />
        <asp:Label ID="Label2" runat="server" Text="Пароль"></asp:Label><br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator"></asp:RequiredFieldValidator><br />
        <asp:Label ID="Label3" runat="server" Text="Подтверждение пароля"></asp:Label><br /> 
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> 
        <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator><br /> 
        <asp:Label ID="Label4" runat="server" Text="Имя"></asp:Label><br /> 
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br /> 
        <asp:Label ID="Label5" runat="server" Text="Фото"></asp:Label><br /> 
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button1" runat="server" Text="Ввод" OnClick="Button1_Click" />  <br />
        <asp:Label ID="Label6" runat="server" Text=" "></asp:Label>
    </form>
                </fildset>
           </div>
        </section>
    <footer><h2>группа 214.41 студент Рамунис С.Ю</h2></footer>
</body>
</html>
