Для запуска программы нужно сделать выполнить несколько пунктов:
1) Инициализировать бд из src/resourse/databaseMySQL/initDB.sql
2) В Edit Configuration добавить Server Tomcat local с артефактом MenegerOfBooks:war exploded
3) В Project Structure установить java version 1.8 если не установлена
4) Настроить мудуль web (если нужно указав путь к папке webapp и путь к дескриптору развертывания WEB-INF/web.xml)
Запуск!