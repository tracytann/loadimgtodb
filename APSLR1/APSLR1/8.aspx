<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="8.aspx.cs" Inherits="APSLR1._8" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
  <title>8 страница</title>
</head>
<body>
     <header><h1>Лабораторная Работа №8 В4 «Построение грфика из таблицы»</h1></header>
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
    <form id="form1" runat="server">
        <div>
            <asp:Chart ID="chart1" runat="server" Height="516px" OnLoad="Chart1_Load" style="margin-left: 298px" Width="1288px">
                <series>
                    <asp:Series ChartType="Area" Name="Series1">
                    </asp:Series>
                </series>
                <chartareas>
                    <asp:ChartArea Name="ChartArea1">
                    </asp:ChartArea>
                </chartareas>
            </asp:Chart>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server"></asp:ObjectDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        </div>
    </form>
        </section>
     <footer><h2>группа 214.41 студент Рамунис С.Ю</h2></footer>
</body>
</html>
