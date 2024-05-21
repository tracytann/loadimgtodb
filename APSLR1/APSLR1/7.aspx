<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="7.aspx.cs" Inherits="APSLR1._7" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
    <title>7 страница</title>
</head>
<body>
    <header><h1>Лабораторная Работа №6 В4 «Вывод рисунка в формате Image из БД»</h1></header>
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
           <div id="block" class="b3" runat="server"> 
               <form id="form1" runat="server"> 
                   <fieldset style="width:95%; height:auto;"> 
                       <legend>Выгрузка изображения</legend> № записи&nbsp; 
                       <asp:TextBox ID="TextBox1" runat="server" Width="84px">1</asp:TextBox> <br />
                       <br/> 
                       <% Fun(); %> 
                       <br/> 
                       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Выгрузить" />
            </fieldset>
               </form>
           </div>
        </section>
    <footer><h2>группа 214.41 студент Рамунис С.Ю</h2></footer>
</body>
</html>
