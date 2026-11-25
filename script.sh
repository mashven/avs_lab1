#!/bin/bash

mkdir ~/lab0
cd ~/lab0
git init

mkdir eleon
mkdir eleon/victor eleon/hotel_office eleon/reception eleon/staff_room eleon/roof
mkdir eleon/victor/kitchen eleon/victor/hall

echo "Блюдо от Виктора Баринова" > eleon/victor/kitchen/new_menu
echo "Закуска от Екатерины Семёновой" >> eleon/victor/kitchen/new_menu
echo "Десерт для гостей отеля Eleon" >> eleon/victor/kitchen/new_menu
echo "Новое блюдо Дениса на проверке у шефа" >> eleon/victor/kitchen/new_menu

echo -e "На кухне подготовить утиную ножку\nВ зал отправить две рыбные закуски\nДля Софии приготовить особый десерт" > eleon/victor/kitchen/dinner_order
echo -e "Элеонора Андреевна встречает первых гостей\nСофия Яновна проверяет готовность зала\nВиктор Баринов представляет новое меню\nКостя помогает команде ресторана" > eleon/victor/hall/opening_guests
echo -e "Ресторан Victor должен открыться вовремя\nБаринов отвечает за кухню\nСофия встречает важных гостей\nПерсонал отеля помогает в зале" > eleon/hotel_office/eleonora_order
echo -e "Утром проверить ресторан Victor\nДнём провести встречу с Элеонорой\nВечером принять первых гостей" > eleon/reception/sofia_schedule
echo -e "Гости попросили столик рядом с окном\nОдин гость хочет поговорить с Бариновым\nПостоянные гости ждут знакомое блюдо" > eleon/reception/guest_notes
echo -e "Новый китель приготовлен для шефа\nНа форме вышито имя Виктор\nКитель находится в комнате персонала" > eleon/staff_room/barinov_uniform
echo -e "Костя приехал помочь перед открытием\nБар готов к вечернему обслуживанию\nПосле смены он ждёт Настю в холле" > eleon/staff_room/kostya_message
echo -e "Макс передал привет всей команде\nОн помнит работу с Виктором Петровичем\nПисьмо оставлено на крыше отеля" > eleon/roof/max_letter
echo -e "Баринов поднялся на крышу после смены\nЭлеонора нашла его возле старого рояля\nКоманда ресторана собралась вместе" > eleon/roof/roof_event
echo -e "Ресторан Victor открывается вечером\nБаринов проверяет работу кухни\nСофия встречает гостей в зале" > opening_day

chmod 755 eleon
chmod 750 eleon/victor/kitchen
chmod 640 eleon/victor/kitchen/dinner_order
chmod 644 eleon/victor/hall/opening_guests
chmod 710 eleon/hotel_office
chmod 640 eleon/reception/sofia_schedule
chmod 750 eleon/staff_room
chmod 600 eleon/staff_room/barinov_uniform
chmod 640 eleon/roof/max_letter
chmod 644 opening_day
chmod u=rwx,g=rx,o= eleon/victor
chmod u=rw,g=r,o=r eleon/victor/kitchen/new_menu
chmod u=rwx,g=rwx,o= eleon/victor/hall
chmod u=r,g=r,o= eleon/hotel_office/eleonora_order
chmod u=rwx,g=rx,o=x eleon/reception
chmod u=rw,g=r,o= eleon/reception/guest_notes
chmod u=r,g=r,o= eleon/staff_room/kostya_message
chmod u=rwx,g=rx,o= eleon/roof
chmod u=r,g=r,o= eleon/roof/roof_event

git status
git add .
git commit -m "Создание структуры каталогов, файлов и настройка прав доступа"
git remote add origin https://github.com/mashven/avs_lab1.git
git push -u origin master