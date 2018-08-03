# Module_service_price

Скопіювати фали в /usr/abills/Abills/modules/Service_price/.

Підключення
abills/libexec/config.pl

@MODULES = (
          'Service_price'
          );

Для створення таблиць в базі виконати команду:
# chmod +x /usr/abills/Abills/modules/Service_price/db/Service_price.sql
# mysql --default-character-set=utf8 -D abills < /usr/abills/Abills/modules/Service_price/db/Service_price.sql -p

Створити ссилку на service_price.cgi
# cd /usr/abills/cgi-bin/
# ln -s ../Abills/modules/Service_price/service_price.cgi service_price.cgi

Післе включення модуля в интерфейсе администратора появляется меню
/ Логін/ Додавання прайсу ABillS/ - для додавання прайсу в базу.
