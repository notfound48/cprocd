# Скрипт оптимизации web-контента
```
Использует подсистему ядра Linux - Inotify, которая позволяет получать уведомления о событиях, связанных с файлами и каталогами файловой системы.
Оптимизирует графику форматов JPEG и PNG "на лету"
```
## Подготовка к установке
```
sudo apt-get update
sudo apt-get install inotify-tools imagemagick git
```
## Установка
```
sudo git clone https://github.com/notfound48/cprocd.git /usr/local/cprocd
sudo /usr/local/cprocd/install.sh
```
## Настройка
```
Файл конфигураци (по умолчанию) /etc/cprocd.list
Содержит в себе список каталогов и файлов для отслеживания. Разделитель - новая строка
Файлы начинающиеся с @ исключаются из отслеживания
```
## Запуск
```
service cprocd start|stop|restart
```

## FULL PROCESSING
```
Возможна полная обработка контента 
/usr/local/cprocd/fullprocessing
```
