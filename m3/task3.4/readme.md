##### EPAM University Programs DevOps external course. Module –Networking Fundamentals

# Task 3.4 – Налаштування DHCP, DNS, NAT

1. Налаштувати DHCP Server в Enterprise мережі (рис.1). Для цього увійти в
налаштування DHCP Server

![Image alt](img/task3-4_1.png)

Рис.1

2. Зробити налаштування DHCP Pool, вказавши початкову адресу 10.Y.D.10 та
адресу Default Gateway – адресу інтерфейсу GE0/0 Router ISP1. Зберегти
налаштування (кнопка Save) та увімкнути DHCP сервіс (позначка On) на рис.2

![Image alt](img/task3-4_2.png)

Рис. 2

3. Перевірити працездатність сервісу, поставивши в налаштуваннях Client 1 та
Client 2 DHCP, як показано на рис. 3

![Image alt](img/task3-4_3.png)

Рис. 3

4. Налаштувати DHCP на Home Router та перевірити працездатність на Client 3

![Image alt](img/task3-4_4_1.png)
![Image alt](img/task3-4_4_2.png)

5. Для налаштування і перевірки роботи DNS сервісу призначити Web Server1 та
Web Server2 доменні імена, наприклад, ```domain1.com``` та ```domain2.com```
відповідно.

![Image alt](img/task3-4_5.png)

6. Внести відповідні записи в налаштування DNS сервера, як показано на рис. 4
та увімкнути DNS service.

![Image alt](img/task3-4_6.png)

Рис. 4

7. Додати до налаштувань DHCP серверів адресу DNS сервера та оновити
налаштування на клієнтах (переключившись з DHCP в Static і назад в DHCP).

![Image alt](img/task3-4_7.png)

8. Перевірити працездатність шляхом відправки ```ping``` з Client на доменне ім’я, як
показано на рис. 5

![Image alt](img/task3-4_8.png)

Рис. 5

## Налаштування Port Forwarding на Home Router (додаткове завдання)

9. Додати в мережу Home Office Home Server та призначити йому статичну
адресу, як показано на рис. 6

![Image alt](img/task3-4_9.png)

Рис.6

10. На Home Server для HTTP сервісу відкоригувати index.html, як показано на
рис. 7

![Image alt](img/task3-4_10.png)

Рис. 7

11. Налаштувати Port Forwarding на Home Router, як показано на рис. 8

![Image alt](img/task3-4_11.png)

Рис. 8

12. Додати на DNS Server запис для Home Server, як показано на рис.9

![Image alt](img/task3-4_12.png)

Рис.9

13. Перевірити працездатність шляхом уведення на Client1 у Desktop/Web
Browser - domain3.com, як показано на рис. 10

![Image alt](img/task3-4_13.png)

Рис. 10