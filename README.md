решил переделать работу заново. За основу возьму тект readme из недоделванной лабороторной работы по адресу git@github.com:Romutk/lab3.2.git
Сюда скопирую этот тескт 
найти 'исходный' GIT репозитарий (A) разработчиков утилиты dmesg;
попытаться пересобрать актуальные исходные тексты под 'устаревшую' систему;
найти GIT репозитарий (B) разработчиков пакета Ubuntu;
попытаться пересобрать актуальный пакет программного обеспечения под 'устаревшую' систему при помощи утилиты dpkg-buildpackage(1);
создать свой репозитарий и импортировать в него ветку master репозитария B;
импортировать в него ветку master репозитария A под именем master-vanilla;
выполнить слияние изменений из master-vanilla в ветку master;



dpkg-query: no path found matching pattern *which dmesg*.
roma@roma-virtual-machine:~/lab3/AvalonTRPO/iproute-20111117$ which dmesg
/bin/dmesg
roma@roma-virtual-machine:~/lab3/AvalonTRPO/iproute-20111117$ dpkg -S /bin/dmesg
util-linux: /bin/dmesg
  

Исходный репозиторий git  разработчиков утилиты dmesg 
https://git.kernel.org/cgit/utils/util-linux/util-linux.git/

Как видно на сайте клонить можно отсюда
git://git.kernel.org/pub/scm/utils/util-linux/util-linux.git

git clone git://git.kernel.org/pub/scm/utils/util-linux/util-linux.git


Почистил папку
Склонировал репозиторий
Помня грабли из предыдущей лабы проверим зависимотси пакета
sudo apt-get build-dep util-linux


Первая проблемка
roma@roma-virtual-machine:~/lab3/AvalonTRPO/util-linux$ ./autogen.sh

You must have autopoint installed to generate the util-linux build system.
The autopoint command is part of the GNU gettext package.


You must have autoconf installed to generate the util-linux build system.


You must have autoheader installed to generate the util-linux build system.
The autoheader command is part of the GNU autoconf package.


You must have libtool-2 installed to generate the util-linux build system.


You must have automake installed to generate the util-linux build system.

./autogen.sh: 82: ./autogen.sh: libtoolize: not found
You must have libtool version >= 2.x.x, but you have none.



Похоже нужно поставить  libtool version >= 2.x.x ,  autopoint,autoconf, autoheader, automake



roma@roma-virtual-machine:~/lab3/AvalonTRPO/util-linux$ sudo apt-get install libtool autopoint autoconf automake

теперь ./autogen.sh ./configure make отработало без ошибок

./dmesg работает, всяко разно подсвечивает, что приятно



Репозиторий разработчиков пакета linux-utils для Ubuntu
Нагуглить можно этот сайт
http://packages.ubuntu.com/ru/source/trusty/util-linux
там есть ссылка на git
http://anonscm.debian.org/cgit/users/lamont/util-linux.git

клонировать можно 
git://anonscm.debian.org/users/lamont/util-linux.git

Для пересборки пакетов поставим ряд утилит
sudo apt-get install build-essential dh-make autoconf automake libtool autotools-dev dpkg-dev fakeroot

export DEBEMAIL=newangel88@mail.ru

Проверяем все ли норм для сборки
roma@roma-virtual-machine:~/lab3/AvalonTRPO/util-linux$ dpkg-depcheck -d ./configure

Правим файлы 
roma@roma-virtual-machine:~/lab3/AvalonTRPO/util-linux$nano debian/changelog
roma@roma-virtual-machine:~/lab3/AvalonTRPO/util-linux$nano debian/control
roma@roma-virtual-machine:~/lab3/AvalonTRPO/util-linux$nano debian/rules


Спробую собрать пакет 
roma@roma-virtual-machine:~/lab3/AvalonTRPO/util-linux$ dpkg-buildpackage -rfakeroot


Собрался


Создал папку /lab3van

в ней создал branch lab3van
Склонил туда репозиторий B
создал branch master-vanilla
Склонил туда репозиторий A
Перешаёл в branch lab3van и смерджил с master-vanilla

