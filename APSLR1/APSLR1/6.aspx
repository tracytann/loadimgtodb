<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="6.aspx.cs" Inherits="APSLR1._6" %>

<!DOCTYPE html>

<html>
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<link rel="stylesheet" href="style.css" />
    <title>6 страница</title>
</head>
<body>
    <header><h1>Лабораторная Работа №5 В4 «Запись рисунка в формате Image»</h1></header>
    <nav id="nav1" runat="server">
        <div id = "blockn" class="bn" runat="server" >
        <ul class="navigation">
          <li id="li1"><a id="A1" href="Index.aspx">&nbsp; &nbsp;Главная&nbsp; &nbsp;</a></li> 
            <li id="li2"><a id="A2" href="1.aspx">Вывод данных</a></li>
            <li id="li3"><a id="A3" href="lr3.aspx">Графика</a></li>
            <li id="li4"><a id="A4" href="4.aspx">Отправка формы</a></li>
            <li id="li5"><a id="A5" href="6.aspx">Загрузка изображения в БД</a></li>
            <li id="li6"><a id="A6" href="7.aspx">Выгрузка изображения из БД</a></li>
            <li id="li7"><a id="A7" href="8.aspx">График</a></li>
        </ul>
        </div>
    </nav>
        <section>
           <div id="block" class="b3" runat="server"> 
               <form id="form1" runat="server"> 
                   <fieldset style="width:95%; height:auto;"> 
                     <legend>Загрузка изображения</legend> 
                       <asp:Label ID="Label1" runat="server" Text="Загрузить файл">                    
                       </asp:Label><br /> <asp:FileUpload ID="FileUpload1" runat="server" /><br /> 
                       <asp:Label ID="Label2" runat="server" Text="Имя файла"></asp:Label><br />
                       <asp:Label ID="Label3" runat="server" Text="Описание"></asp:Label> 
                       <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /> <br /> 
                       <asp:Image ID="Image1" runat="server" Height="125px" Width="95px" ImageAlign="AbsMiddle" /> &nbsp;
                       <br /> <asp:Label ID="Label4" runat="server" Text="Path"></asp:Label> <br />
                       <asp:Button ID="Button1" runat="server" Text="Загрузить" OnClick="Button1_Click" />
            </fieldset>
               </form>
           </div>
        </section>
    <footer><h2>группа 214.41 студент Рамунис С.Ю</h2></footer>
</body>
</html>
