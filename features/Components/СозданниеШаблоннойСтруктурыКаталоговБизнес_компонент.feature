﻿#encoding: utf-8  
#language: ru

@IgnoreOnLinux
@IgnoreOnOFBuilds

Функционал: Созданние шаблонной структуры каталогов бизнес-компонент                                                                                      
	Как Системный аналитик                                                                                                                                
	Я хочу При первичном открытиии обработки создавать необходимую шаблонную структуру каталогов бизнес-компонент                                         
	Чтобы Изначально структурировать функционал по функциональным заказчикам и функциональной методологии                                                 
	
Контекст:
	Дано: Существует обработка `bdd-editor.epf`
	и я нахожусь на закладке `Структура компонент`
	и существует каталог хранения шаблонов `.\libs\templates`

Сценарий: Загрузка шаблонов для систем типа ERP
	Когда Я нажимаю кнопку интерфейса `Выбрать шаблон функциональных требований`
	И в каталоге features совершенно отсутствуют подкаталоги
	И выбираю из списка `ERP`
	Тогда в каталоге `структура требований для загрузки` создаются каталоги на основе файла `.\libs\templates\erp-bc.yml`
	И создался файл `.\features\components.ini` с идентификатором erp-bc.yml

Сценарий: Загрузка шаблонов для систем типа Управления торговлей
	Когда Я нажимаю кнопку интерфейса `Выбрать шаблон функциональных требований`
	И в каталоге features совершенно отсутствуют подкаталоги
	И выбираю из списка `Управление торговлей`
	Тогда в каталоге `структура требований для загрузки` создаются каталоги на основе файла `.\libs\templates\om-bc.yml`
	И создался файл `.\features\components.ini` с идентификатором om-bc.yml


Сценарий: Загрузка шаблонов для систем типа Бухгалтерия предприятия
	Когда Я нажимаю кнопку интерфейса `Выбрать шаблон функциональных требований`
	И в каталоге features совершенно отсутствуют подкаталоги
	И выбираю из списка `Бухгалтерия и финансы`
	Тогда в каталоге `структура требований для загрузки` создаются каталоги на основе файла `.\libs\templates\fi-bc.yml`
	И создался файл `.\features\components.ini` с идентификатором fi-bc.yml

Сценарий: Загрузка шаблонов для систем типа Зарплата и управления персоналом
	Когда Я нажимаю кнопку интерфейса `Выбрать шаблон функциональных требований`
	И в каталоге features совершенно отсутствуют подкаталоги
	И выбираю из списка `Зарплата и персонал`
	Тогда в каталоге `структура требований для загрузки` создаются каталоги на основе файла `.\libs\templates\hrm-bc.yml`
	И создался файл `.\features\components.ini` с идентификатором hrm-bc.yml

Сценарий: Загрузка шаблонов для систем с нуля или прочих систем
	Когда Я нажимаю кнопку интерфейса `Выбрать шаблон функциональных требований`
	И в каталоге features совершенно отсутствуют подкаталоги
	И выбираю из списка `Прочие системы`
	Тогда в каталоге `структура требований для загрузки` создаются каталоги на основе файла `.\libs\templates\empty-bc.yml`
	И создался файл `.\features\components.ini` с идентификатором empty-bc.yml

Сценарий: Загрузка шаблонов для внешних обработок и расширений 1С
	Когда Я нажимаю кнопку интерфейса `Выбрать шаблон функциональных требований`
	И в каталоге features совершенно отсутствуют подкаталоги
	И выбираю из списка `Внешняя обработка или расширение`
	Тогда в каталоге `структура требований для загрузки` создаются каталоги на основе файла `.\libs\templates\libs-bc.yml`
	И создался файл `.\features\components.ini` с идентификатором libs-bc.yml
