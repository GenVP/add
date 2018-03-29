﻿Перем ПутьКФайлуПолный;// в эту переменную будет установлен правильный клиентский путь к текущему файлу

// { Plugin interface
Функция ОписаниеПлагина(ВозможныеТипыПлагинов) Экспорт
	Результат = Новый Структура;
	Результат.Вставить("Тип", ВозможныеТипыПлагинов.Загрузчик);
	Результат.Вставить("Идентификатор", Метаданные().Имя);
	Результат.Вставить("Представление", "");
	ВызватьИсключение "Необходимо указать представление";
	
	Возврат Новый ФиксированнаяСтруктура(Результат);
КонецФункции

Процедура Инициализация(КонтекстЯдраПараметр) Экспорт
КонецПроцедуры
// } Plugin interface

// { Loader interface
#Если ТолстыйКлиентОбычноеПриложение Тогда
Функция ВыбратьПутьИнтерактивно(КонтекстЯдра, ТекущийПуть = "") Экспорт
	Перем ВыбранныйПуть;
	
	ВызватьИсключение "Метод не реализован";
	
	Возврат ВыбранныйПуть;
КонецФункции
#КонецЕсли

Функция Загрузить(КонтекстЯдра, Путь) Экспорт
	Перем ДеревоТестов;
	
	ПостроительДереваТестов = КонтекстЯдра.Плагин("ПостроительДереваТестов");
	ИконкиУзловДереваТестов = ПостроительДереваТестов.ИконкиУзловДереваТестов;
	
	ВызватьИсключение "Метод не реализован";
	
	Возврат ДеревоТестов;
КонецФункции

Функция ПолучитьКонтекстПоПути(КонтекстЯдра, Путь) Экспорт
	Перем Контекст;
	
	ВызватьИсключение "Метод не реализован";
	
	Возврат Контекст;
КонецФункции
// } Loader interface
