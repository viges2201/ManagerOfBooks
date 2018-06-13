DROP TABLE IF EXISTS test.book;
create table test.book
(
  id          int auto_increment
    primary key,
  title       varchar(100) not null,
  description varchar(255) not null,
  author      varchar(100) not null,
  isbn        varchar(20)  not null,
  printYear   int          not null,
  readAlready tinyint      not null
)
  charset = utf8;
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Хо́ббит, или Туда и обратно","При написании «Хоббита» Толкин обращался к мотивам скандинавской мифологии и древнеанглийской поэмы «Беовульф»","Джона Р. Р. Толкина","1425041871","1937","1");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Жёлтая стрела́","Всё действие происходит в «Жёлтой стреле» — поезде, идущем к разрушенному мосту, заключающем для персонажей повести весь мир.","Виктор Пелевин","5-264-00363-7","1993","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("«Мор, ученик Смерти»","юмористическое фэнтези английского писателя Терри Пратчетта, написано в 1987 году.","Терри Пратчетт","5-04-008733-0","1987","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Философия Java","Java нельзя понять, взглянув на него только как на коллекцию некоторых характеристик, - необходимо понять задачи этого языка как частные задачи программирования в целом.","Брюс Екел","978-5-388-00003-3","2010","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Мастер и Маргарита"," Роман относится к незавершённым произведениям.","Михаил Булгаков","1425041875","1940","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("«Война и мир»","Роман-эпопея Льва Николаевича Толстого, описывающий русское общество в эпоху войн против Наполеона в 1805—1812 годах.","Лев Николаевич Толстой","1425041876","1869","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("«451 градус по Фаренгейту»","Роман описывает американское общество близкого будущего, в котором книги находятся под запретом; «пожарные», к числу которых принадлежит и главный герой Гай Монтэг, сжигают любые найденные книги.","Рэй Дуглас Брэдбери","1425041877","1953","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Ма́ленький принц"," аллегорическая повесть-сказка, наиболее известное произведение Антуана де Сент-Экзюпери","Антуан де Сент-Экзюпери","1425041878","1942","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("«Над пропастью во ржи»"," В нём от лица 16-летнего юноши по имени Холден откровенно рассказывается о его обострённом восприятии американской действительности и неприятии общих канонов и морали современного общества.","Джером Сэлинджер","978-5-699-30534-6","1951","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Атла́нт расправил плечи","Рэнд считала его главным произведением в своей литературной карьере.","Айн Рэнд","1425041880","1957","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Анна Каренина","О трагической любви замужней дамы Анны Карениной и блестящего офицера Вронского на фоне счастливой семейной жизни дворян Константина Лёвина[К 1] и Кити Щербацкой","Лев Николаевич Толстой","1425041881","1877","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Книжный вор»","Находился в списке «The New York Times Best Seller list» более 230 недель[1].","Маркус Зусак","978-5-699-37865-4","2009","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("«Портре́т Дориана Гре́я»","В жанровом отношении представляет смесь романа воспитания с моральной притчей[1].","Оскар Уайльд","1425041883","1890","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Бойцовский клуб","«Триумфа́льная а́рка» — роман немецкого писателя Эриха Марии Ремарка.","Чак Паланик","978-5-17-016682-4","2002","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Великий Гэтсби","роман американского писателя Фрэнсиса Скотта Фицджеральда. Вышел в свет 10 апреля 1925 года и является в американской литературе типичным представителем так называемого «Века Джаза».","Фрэнсис Скотт Фицджеральд","1425041885","1925","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Бесы"," Один из наиболее политизированных романов Достоевского был написан им под впечатлением от ростков террористического и радикального движений в среде русских интеллигентов, разночинцев и прочих.","Ф. М. Достоевский","1425041886","1872","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Гарри Поттер и философский камень","Первый роман в серии книг про юного волшебника Гарри Поттера, написанный Дж. К. Роулинг.","Джоан Роулинг","1425041887","1997","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Гарри Поттер и Орден Феникса","Пятая книга английской писательницы Дж. К. Роулинг о Гарри Поттере. Мировая премьера книги состоялась в Англии летом 2003 года, а российская премьера — в начале 2004.","Дж. К. Роулинг","5-353-01435-9","2003","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Гарри Поттер и узник Азкабана ","«Третья книга из серии романов о Гарри Поттере.","Джоан Роулинг","1425041889","1999","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Гарри Поттер и Кубок огня","Четвёртая книга о приключениях Гарри Поттера, написанная английской писательницей Джоан Роулинг. В Англии опубликована в 2000 году.","Дж. К. Роулинг","1425041890","2000","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Идиот",	"«Идиот» – лучший из лучших — и как роман, и как главный персонаж.","Достоевский","1425041868","1869","0");
INSERT INTO book (title, description, author, isbn, printYear, readAlready) VALUES ("Игрок","Там он за несколько дней проиграл не только все свои деньги, но и наличность своей подруги Полины Сусловой","Достоевский","1425041869","1866","0");
