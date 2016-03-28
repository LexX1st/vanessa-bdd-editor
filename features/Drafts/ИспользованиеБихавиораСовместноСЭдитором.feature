﻿#encoding: utf-8
#language: ru

@IgnoreOnLinux
@IgnoreOnOFBuilds

Функционал: Использование бихавиора совместно с эдитором                                                                                                  
	Как пользователь                                                                                                                                      
	Я хочу одновременно работать в обоих обработках                                                                                                       
	Чтобы было удобно работать                                                                                                                            
	
Контекст:
	Дано конфигурация 1С

Сценарий: первичное получение фича-файлов из behavior
	Когда Я открываю обработку BDD-Editor
	И вызываю обработку behavior
	И передаю каталог инструментов в behavior
	Тогда я получаю дерево фича-файлов 

Сценарий: открытие behavior для дальнейшей работы
	Когда я закончила редактирование фича-файлов в BDD-Editore
	И открываю behavior для дальнейшей работы в этом же сеансе 1С
	И нажимаю "загрузить одну фичу" или "загрузить фичи из каталога"
	Тогда каталог инструментов заполняется корректный 
	И заполняется "Дерево тестов"
