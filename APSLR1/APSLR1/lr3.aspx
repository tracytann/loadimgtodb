<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lr3.aspx.cs" Inherits="APSLR1.lr3" %>

<!DOCTYPE html>

<html>
<head id="Headlr3" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
    <title></title>
</head>
<body>
    <header><h1>Лабораторная Работа №2 В4 «Графика»</h1></header>
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
                <fildset><legend>Игра в шашки</legend>
    <form id="form1" runat="server">
       
        
        <asp:Label ID="Label1" runat="server" BorderColor="#333300" Font-Bold="True" ForeColor="Black" Text="Ферзь"></asp:Label> 
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" BorderColor="Black" Font-Bold="True" ForeColor="Black" Text="Фигура"></asp:Label>
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="33px">3</asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Width="33px">4</asp:TextBox>
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:TextBox ID="TextBox3" runat="server" Width="33px">5</asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Width="33px">2</asp:TextBox>
      
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        <asp:Button ID="Button1" runat="server" Text="Go" OnClick="Button1_Click" />
        <br />

        <%
            int n1 = Convert.ToInt32(TextBox1.Text);
            int n2 = Convert.ToInt32(TextBox2.Text);
            int m1 = Convert.ToInt32(TextBox3.Text);
            int m2 = Convert.ToInt32(TextBox4.Text);

            int i, j, n;
            if (btn1cl == true)
            {
                if ((n1 > 8) | (n2 > 8) | (m1 > 8) | (m2 > 8) | (n1 < 1) | (n2 < 1) | (m2 < 1) | (m2 < 1))
                {
                    Response.Write("Данные введены неверно!");
                }
                else
                {
                    Response.Write("<table class=tbl1>");
                    Response.Write("<tr><td colspan=8>Координаты Ферзя n1=" + n1 + " &nbsp; n2=" + n2 + " <br> Координаы фигуры m1=" + m1);
                    for (n = 1; n <= 8; n++)
                    {
                        Response.Write("<td><center>" + n + "</td>");
                    }
                    Response.Write("</tr>");
                    for (j = 1; j <= 8; j++)
                    {
                        Response.Write("<tr>");
                        if ((j % 2) == 0)
                        {
                            for (i = 1; i <= 8; i++)
                            {
                                if ((i % 2) == 0)
                                {
                                    if ((j == n2) && (i == n1))
                                    {
                                        Response.Write("<td><img src=ris/a.png class=img1></td>");
                                    }
                                    else if ((j == m2) && (i == m1))
                                    {
                                        Response.Write("<td><img scr=ris/f.png class=img1></td>");
                                    }
                                    else
                                    {
                                        Response.Write("<td><img src=b.png class=img></td>");
                                    }
                                }
                                else
                                {
                                    if ((j == n2) && (i == n1))
                                    {
                                        Response.Write("<td><img src=ris/rook_black.png class=img1></td>");
                                    }
                                    else if ((j == m2) && (i == m1))
                                    {
                                        Response.Write("<td><img src=ris/f.png class=img1></td>");
                                    }
                                    else
                                    {
                                        Response.Write("<td><img src=ris/ch.png class=img1></td>");
                                    }
                                }
                            }
                        }
                        else
                        {
                            i = 1;
                            for (i = 1; i <= 8; i++)
                            {
                                if ((i % 2) == 0)
                                {
                                    if ((j == n2) && (i == n1))
                                    {
                                        Response.Write("<td><img src=ris/rook_black.png class=img1></br>");
                                    }
                                    else if ((j == m2) && (i == m1))
                                    {
                                        Response.Write("<td><img src=ris/f.png class=img1></td>");
                                    }
                                    else
                                    {
                                        Response.Write("<td><img src=ris/ch.png class=img></td>");
                                    }
                                }
                                else
                                {
                                    if ((j == n2) && (i == n1))
                                    {
                                        Response.Write("<td><img src=ris/a.png class=img1></td>");
                                    }
                                    else if ((j == m2) && (i == m1))
                                    {
                                        Response.Write("<td><img src=ris/f.png class=img1></td>");
                                    }
                                    else
                                    {
                                        Response.Write("<td><img src=ris/b.png class=img></td>");
                                    }
                                }
                            }
                        }
                        Response.Write("</tr>");

                    }
                    Response.Write("</table>");
                }
            }
        %>      
    </form>
                </fildset>
           </div>
        </section>
    <footer><h2>группа 214.41 студент Рамунис С.Ю</h2></footer>
</body>
</html>
