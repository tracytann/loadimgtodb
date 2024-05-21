<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="APSLR1.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
    <title></title>
</head>
<body>
    <header><h1>Задание №1 по дисциплине "Программирование в ASP:NET"</h1></header>
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
    <article>
    
        <div>
            <section>
                <div id="block" runat="server">
                    <fieldset>
                        <legend>Задание №1</legend>
                        <form id="form1" runat="server">

                            <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="250px" Width="100%" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        </form>
                    </fieldset>
                </div>

            </section>
        </div>
   
   </article>
    <footer><h1>группа 214.41 студент Рамунис С.Ю.</h1></footer>
</body>
</html>
