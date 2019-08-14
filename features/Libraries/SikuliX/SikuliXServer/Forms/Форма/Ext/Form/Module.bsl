﻿
///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,ОписаниеШага,ТипШага,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КликНаКартинку(Парам01)","КликНаКартинку","Затем клик на картинку ""ИмяКартинки""","Эмулирует клик левой кнопкой мышки по картинке. Картинка ищется в каталоге проекта.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КликПравойКнопкойНаКартинку(Парам01)","КликПравойКнопкойНаКартинку","Дано клик правой кнопкой на картинку ""ИмяКартинки""","Эмулирует клик правой кнопкой мышки по картинке. Картинка ищется в каталоге проекта.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"КурсорККартинке(Парам01)","КурсорККартинке","Дано курсор к картинке ""ИмяКартинки""","Эмулирует перемещение курсора мышки к картинке. Картинка ищется в каталоге проекта.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ДвойнойКликНаКартинку(Парам01)","ДвойнойКликНаКартинку","Дано двойной клик на картинку ""ИмяКартинки""","Делает двойной клик по картинке. Картинка ищется в каталоге проекта.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюСтрелкуОтДо(Парам01,Парам02,ТабПарам)","ЯРисуюСтрелкуОтДо","Затем я рисую стрелку от ""Картинка1"" до ""Картинка2"""
	+ Символы.ПС + "		|'Цвет'          | 'Зеленый'        |"
	+ Символы.ПС + "		|'Длительность'  | '2000'           |"
	+ Символы.ПС + "		|'ТочкаКуда'     | 'СерединаНиз'    |"
	,"Рисует стрелку от одной картинки до другой. Поиск картинок на экране делается с помощью SikuliX. Если первый параметр равен пустой сроке, тогда точкой ""от"" будет центр экрана. Дополнительные параметры задаются через таблицу Gherkin. "
	+ Символы.ПС + "- Цвет (Color) - строка, из перечисления WebЦвета, например ""Зеленый""."
	+ Символы.ПС + "- Длительность (Duration) - сколько милисекунд стрелка будет находится на экране, например - 2000."
	+ Символы.ПС + "- ТочкаКуда (PointTo), ТочкаОткуда (PointFrom) - место, в которое будет указывать/исходить стрелка. Возможные значения: СерединаНиз (MiddleDown), СерединаВерх (MiddleUp), СерединаПраво (MiddleRight), СерединаЛево (MiddleLeft), Центр (Center).","Прочее.SikuliX");
	
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЗапускаюSikuliXСервер()","ЯЗапускаюSikuliXСервер","И    я запускаю SikuliX сервер","Запускает SikuliX сервер.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюХоткей(Парам01,Парам02)","ЯНажимаюХоткей","Дано я нажимаю хоткей ""ХотКей"" ""Модификатор""","Эмулирует нажатие хоткея с помощью SikuliX.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯНажимаюENTER()","ЯНажимаюENTER","Дано я нажимаю ENTER","Эмулирует нажатие клавиши ENTER с помощью SikuliX.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯЖдуКартинкиВТечениеСекунд(Парам01,Парам02)","ЯЖдуКартинкиВТечениеСекунд","И я жду картинки ""ИмяКартинки"" в течение 20 секунд","Ожидает появления картинки на экране в течение нужного числа секунд.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯОпределяюКоординатыКартинкиКак(Парам01,Парам02)","ЯОпределяюКоординатыКартинкиКак","И я определяю координаты картинки ""ИмяКартинки"" как ""ИмяПеременной""","Определяет коордианты картинки с помощью SikuliX и сохраняет структуру с координатами в переменную","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯРисуюРамкуВокругКартинки(Парам01)","ЯРисуюРамкуВокругКартинки","И я рисую рамку вокруг картинки ""ИмяКартинки""","Рисует рамку вокруг картинки.","Прочее.SikuliX");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl(Парам01,Парам02)","ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl","И я вращаю колесо мышки ""Направление"" 3 раз с зажатой клавишей ctrl","Эмулирует вращение колеса мышки с зажатой клавишей Ctrl. Нужно для эмуляции изменения масштаба. Параметр <Направление> может принимать значения ""Вверх"" или ""Вниз""","Прочее.SikuliX");

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЕстьКартинкаТогда(Парам01)","ЕстьКартинкаТогда","Если есть картинка ""ИмяКартинки"" Тогда","Условие. Проверяет, есть ли на экране нужная картинка.","Прочее.SikuliX","Условие");
	
	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
Функция ПереданныеПараметры(ТабПарам)
	Структура = Новый Структура;
	Для Каждого СтрокаТабПарам Из ТабПарам Цикл
		Попытка
			Структура.Вставить(СтрокаТабПарам.Кол1,СтрокаТабПарам.Кол2);
		Исключение
			Сообщить(ОписаниеОшибки());
		КонецПопытки;
	КонецЦикла;	 
	
	Возврат Структура;
КонецФункции	

&НаСервереБезКонтекста
Функция АбсолютыйЦвет(ИсходныйЦвет)
    ТабДок = Новый ТабличныйДокумент;
    ТабДок.Область("R1C1").ЦветФона = ИсходныйЦвет;
	ВременныйФАйл = ПолучитьИмяВременногоФайла("mxl");
    ТабДок.Записать(ВременныйФАйл, ТипФайлаТабличногоДокумента.MXL7); 
    ТабДок.Прочитать(ВременныйФАйл);
	УдалитьФайлы(ВременныйФАйл);
    АЦвет = ТабДок.Область("R1C1").ЦветФона;
    Возврат АЦвет;
КонецФункции	 

&НаКлиенте
Функция ЦветЧислом(Цвет)
	АбсолютныйЦвет = АбсолютыйЦвет(Цвет);
	Возврат АбсолютныйЦвет.Синий + 255*АбсолютныйЦвет.Зеленый + 255*255*АбсолютныйЦвет.Красный;
КонецФункции	 

&НаКлиенте
Функция Центр(Знач Точка1,Знач Точка2)
	Возврат Точка1 + Окр((Точка2-Точка1)/2);
КонецФункции	 

&НаКлиенте
Функция ПрочитатьФайлJson(ИмяФайла)
	ЧтениеJSON = Вычислить("Новый ЧтениеJSON");
	ЧтениеJSON.ОткрытьФайл(ИмяФайла);
	СтруктураПараметров = Вычислить("ПрочитатьJSON(ЧтениеJSON)");
	ЧтениеJSON.Закрыть();
	Возврат СтруктураПараметров; 
КонецФункции	 

&НаКлиенте
Функция ПолучитьФайлКартинки(ИмяФайла)
	Возврат Ванесса.ПолучитьФайлКартинки(ИмяФайла); 
КонецФункции	 

&НаКлиенте
Процедура КоординатыТочкиИзТекста(X,Y,Rect,Стр)
	Если Стр = "СерединаПраво" ИЛИ Стр = "MiddleRight" Тогда
		X = Rect.X2;
		Y = Rect.Y1 + Окр((Rect.Y2-Rect.Y1)/2);
	ИначеЕсли Стр = "СерединаЛево" ИЛИ Стр = "MiddleLeft" Тогда
		X = Rect.X1;
		Y = Rect.Y1 + Окр((Rect.Y2-Rect.Y1)/2);
	ИначеЕсли Стр = "СерединаВерх" ИЛИ Стр = "MiddleUp" Тогда
		X = Rect.X1 + Окр((Rect.X2-Rect.X1)/2);
		Y = Rect.Y1;
	ИначеЕсли Стр = "СерединаНиз" ИЛИ Стр = "MiddleDown" Тогда
		X = Rect.X1 + Окр((Rect.X2-Rect.X1)/2);
		Y = Rect.Y2;
	ИначеЕсли Стр = "Центр" ИЛИ Стр = "Center" Тогда
		X = Rect.X1 + Окр((Rect.X2-Rect.X1)/2);
		Y = Rect.Y1 + Окр((Rect.Y2-Rect.Y1)/2);
	КонецЕсли;	 
КонецПроцедуры 

&НаКлиенте
//Затем клик на картинку "Тестовый Элемент 2"
//@КликНаКартинку(Парам01)
Процедура КликНаКартинку(ИмяФайла) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя,"\","/");
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickOnPicture.sikuli --args """ + ПутьКФайлу + """" , -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сделать клик мышкой по картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Дано двойной клик на картинку "СтрокаУпавшегоШагаВСценарииПроверкиЭталонов"
//@ДвойнойКликНаКартинку(Парам01)
Процедура ДвойнойКликНаКартинку(ИмяФайла) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя,"\","/");
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\DoubleClickOnPicture.sikuli --args """ + ПутьКФайлу + """" , -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сделать клик мышкой по картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Затем я рисую стрелку от "Vanessa_Automation" до "Запуск_сценариев"
//@ЯРисуюСтрелкуОтДо(Парам01,Парам02)
Процедура ЯРисуюСтрелкуОтДо(КартинкаОт,КартинкаДо,ТабПарам) Экспорт
	ИмяФайлСтрелки = Ванесса.Объект.КаталогИнструментов + "/tools/VideoTools/Arrow.exe";
	Если НЕ Ванесса.ФайлСуществуетКомандаСистемы(ИмяФайлСтрелки) Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не найден файл <%1>");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайлСтрелки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Если ЗначениеЗаполнено(КартинкаОт) Тогда
		ФайлКартинкаОт = ПолучитьФайлКартинки(КартинкаОт);
		ПутьКФайлуКартинкаОт = СтрЗаменить(ФайлКартинкаОт.ПолноеИмя,"\","/");
		ИмяФайлаОтветаОт = ПолучитьИмяВременногоФайла("json");
		СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\GetPictureCoordinats.sikuli --args ""%1"" ""%2""";
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ПутьКФайлуКартинкаОт);
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",ИмяФайлаОтветаОт);
		Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина);
		Если Рез <> 0 Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось найти на экране картинку <%1>.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КартинкаОт);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	 
		ДанныеОт = ПрочитатьФайлJson(ИмяФайлаОтветаОт);
		ТочкаОткудаX = Центр(ДанныеОт.X1,ДанныеОт.X2);
		ТочкаОткудаY = Центр(ДанныеОт.Y1,ДанныеОт.Y2);
	Иначе	
		ИнформацияЭкранаКлиента = Вычислить("ПолучитьИнформациюЭкрановКлиента()[0]");
		Ширина = ИнформацияЭкранаКлиента.Ширина;
		Высота = ИнформацияЭкранаКлиента.Высота;
		
		ТочкаОткудаX = Окр(Ширина/2);
		ТочкаОткудаY = Окр(Высота/2);
		
		ДанныеОт = Новый Структура;
		ДанныеОт.Вставить("X1",ТочкаОткудаX);
		ДанныеОт.Вставить("X2",ТочкаОткудаX);
		ДанныеОт.Вставить("Y1",ТочкаОткудаY);
		ДанныеОт.Вставить("Y2",ТочкаОткудаY);
	КонецЕсли;	 
	
	ДанныеДо = Неопределено;
	Если ТипЗнч(КартинкаДо) = Тип("Структура") Тогда
		ДанныеДо = КартинкаДо;
	КонецЕсли;	 
	//Если Лев(КартинкаДо,1) = "$" Тогда
	//	Данные = Ванесса.ПолучитьЗначениеИзКонтекстаЕслиЭтоВозможно(КартинкаДо);
	//	Если ТипЗнч(Данные) = Тип("Структура") Тогда
	//		ДанныеДо = Данные;
	//	КонецЕсли;	 
	//КонецЕсли;	 
	
	Если ДанныеДо = Неопределено Тогда
		ФайлКартинкаДо = ПолучитьФайлКартинки(КартинкаДо);
		ПутьКФайлуКартинкаДо = СтрЗаменить(ФайлКартинкаДо.ПолноеИмя,"\","/");
		ИмяФайлаОтветаДо = ПолучитьИмяВременногоФайла("json");
		СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\GetPictureCoordinats.sikuli --args ""%1"" ""%2""";
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ПутьКФайлуКартинкаДо);
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",ИмяФайлаОтветаДо);
		Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина);
		Если Рез <> 0 Тогда
			ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось найти на экране картинку <%1>.");
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",КартинкаДо);
			ВызватьИсключение ТекстСообщения;
		КонецЕсли;	 
		ДанныеДо = ПрочитатьФайлJson(ИмяФайлаОтветаДо);
	КонецЕсли;	 
	
	ПереданныеПараметры = ПереданныеПараметры(ТабПарам);
	
	Цвет = WebЦвета.ЗеленыйЛес;
	Если ПереданныеПараметры.Свойство("Цвет") Тогда
		Попытка
			Цвет = WebЦвета[ПереданныеПараметры.Цвет];
		Исключение
			Сообщить(ОписаниеОшибки());
		КонецПопытки;
	ИначеЕсли ПереданныеПараметры.Свойство("Color") Тогда
		Попытка
			Цвет = WebЦвета[ПереданныеПараметры.Color];
		Исключение
			Сообщить(ОписаниеОшибки());
		КонецПопытки;
	КонецЕсли;	 
	АбсолютыйЦвет = АбсолютыйЦвет(Цвет);
	
	
	ТочкаКудаX   = Центр(ДанныеДо.X1,ДанныеДо.X2);
	ТочкаКудаY   = Центр(ДанныеДо.Y1,ДанныеДо.Y2);
	
	Если ПереданныеПараметры.Свойство("ТочкаОткуда") Тогда
		КоординатыТочкиИзТекста(ТочкаОткудаX,ТочкаОткудаY,ДанныеОт,ПереданныеПараметры.ТочкаОткуда);
	ИначеЕсли ПереданныеПараметры.Свойство("PointFrom") Тогда
		КоординатыТочкиИзТекста(ТочкаОткудаX,ТочкаОткудаY,ДанныеОт,ПереданныеПараметры.PointFrom);
	КонецЕсли;	 
	Если ПереданныеПараметры.Свойство("ТочкаКуда") Тогда
		КоординатыТочкиИзТекста(ТочкаКудаX,ТочкаКудаY,ДанныеДо,ПереданныеПараметры.ТочкаКуда);
	ИначеЕсли ПереданныеПараметры.Свойство("PointTo") Тогда
		КоординатыТочкиИзТекста(ТочкаКудаX,ТочкаКудаY,ДанныеДо,ПереданныеПараметры.PointTo);
	КонецЕсли;	 
	
	Длительность = "10000";
	Если ПереданныеПараметры.Свойство("Длительность") Тогда
		Длительность = ПереданныеПараметры.Длительность;
	ИначеЕсли ПереданныеПараметры.Свойство("Duration") Тогда
		Длительность = ПереданныеПараметры.Duration;
	КонецЕсли;	 
	
	
	СтрокаКоманды = ИмяФайлСтрелки + " %1 %2 %3 %4 %5 %6 %7 %8 %9";	
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",XMLСтрока(ТочкаОткудаX));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",XMLСтрока(ТочкаОткудаY));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%3",XMLСтрока(ТочкаКудаX));
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%4",XMLСтрока(ТочкаКудаY));
	Попытка
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%5",XMLСтрока(АбсолютыйЦвет.Красный));//R
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%6",XMLСтрока(АбсолютыйЦвет.Зеленый));//G
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%7",XMLСтрока(АбсолютыйЦвет.Синий));//B
	Исключение
		Сообщить(ОписаниеОшибки());
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%5",XMLСтрока(10));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%6",XMLСтрока(10));
		СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%7",XMLСтрока(10));
	КонецПопытки;
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%8",XMLСтрока(Длительность));//длительность в мс
	СтопФайл = ПолучитьИмяВременногоФайла("txt");
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%9","stopfilename="+XMLСтрока(СтопФайл));
	Ванесса.ВыполнитьКомандуОСБезПоказаЧерногоОкна(СтрокаКоманды,0);
КонецПроцедуры


&НаКлиенте
//И    я запускаю SikuliX сервер
//@ЯЗапускаюSikuliXСервер()
Процедура ЯЗапускаюSikuliXСервер() Экспорт
	Ванесса.ЗапуститьSikuliXСевер();
КонецПроцедуры


&НаКлиенте
//Дано я нажимаю хоткей "r" "win"
//@ЯНажимаюХоткей(Парам01,Парам02)
Процедура ЯНажимаюХоткей(ХотКей,Модификатор = "no") Экспорт
	СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\HotKey.sikuli --args ""%1"" ""%2""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ХотКей);
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",НРег(Модификатор));
	Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить эмуляцию хоткея <%1> <%2>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ХотКей);
		Если Модификатор = "no" Тогда
			ТекстСообщения = СтрЗаменить(ТекстСообщения," <%2>","");
		Иначе	
			ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",Модификатор);
		КонецЕсли;	 
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Дано я нажимаю ENTER
//@ЯНажимаюENTER()
Процедура ЯНажимаюENTER() Экспорт
	СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\TypeENTER.sikuli";
	Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить эмуляцию ENTER.");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры


&НаКлиенте
//И я жду картинки "ИмяКартинки" в течение 20 секунд
//@ЯЖдуКартинкиВТечениеСекунд(Парам01,Парам02)
Процедура ЯЖдуКартинкиВТечениеСекунд(ИмяКартинки,КолСек) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяКартинки);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя,"\","/");
	
	СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WaitPict.sikuli --args ""%1"" ""%2""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ПутьКФайлу);
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",XMLСтрока(КолСек));
	ДопПараметры = Новый Структура;
	ДопПараметры.Вставить("Таймаут",КолСек);
	Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина,,ДопПараметры);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось дождаться картинки <%1> в течение <%2> секунд.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяКартинки);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",КолСек);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
Функция ПолучитьДанныеКартинкиНаЭкране(ИмяКартинки)
	ФайлКартинкаОт = ПолучитьФайлКартинки(ИмяКартинки);
	ПутьКФайлуКартинки = СтрЗаменить(ФайлКартинкаОт.ПолноеИмя,"\","/");
	ИмяФайлаОтвета = ПолучитьИмяВременногоФайла("json");
	СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\GetPictureCoordinats.sikuli --args ""%1"" ""%2""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ПутьКФайлуКартинки);
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",ИмяФайлаОтвета);
	Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось найти на экране картинку <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяКартинки);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	Данные = ПрочитатьФайлJson(ИмяФайлаОтвета);
	Возврат Данные;
КонецФункции	 

&НаКлиенте
//И я определяю координаты картинки "ИмяКартинки" как "ИмяПеременной"
//@ЯОпределяюКоординатыКартинкиКак(Парам01,Парам02)
Процедура ЯОпределяюКоординатыКартинкиКак(ИмяКартинки,ИмяПеременной) Экспорт
	Данные = ПолучитьДанныеКартинкиНаЭкране(ИмяКартинки);
	Ванесса.СохранитьЗначениеПеременнойВКонтекст(ИмяПеременной,Данные);
КонецПроцедуры

&НаКлиенте
//И я рисую рамку вокруг картинки "ИмяКартинки"
//@ЯРисуюРамкуВокругКартинки(Парам01)
Процедура ЯРисуюРамкуВокругКартинки(ИмяКартинки) Экспорт
	Данные = ПолучитьДанныеКартинкиНаЭкране(ИмяКартинки);
	
КонецПроцедуры

&НаКлиенте
//И я вращаю колесо мышки "Вверх" 3 раз с зажатой клавишей ctrl
//@ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl(Парам01,Парам02)
Процедура ЯВращаюКолесоМышкиРазСЗажатойКлавишейCtrl(Направление,КоличествоРаз) Экспорт
	Если Нрег(Направление) = "вверх" Тогда
		ПараметрНаправление = "up";
	ИначеЕсли Нрег(Направление) = "up" Тогда
		ПараметрНаправление = "up";
	ИначеЕсли Нрег(Направление) = "вниз" Тогда
		ПараметрНаправление = "down";
	ИначеЕсли Нрег(Направление) = "down" Тогда
		ПараметрНаправление = "down";
	Иначе
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Неверно указано значение параметра направления вращения колеса мышки: <%1>. Возможные значения: Вверх или Вниз.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Направление);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\WheelCtrl.sikuli --args ""%1"" ""%2""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",Направление);
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",XMLСтрока(КоличествоРаз));
	Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить эмуляцию вращения колеса мышки в направлении <%1>, количество итераций <%2>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",Направление);
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%2",XMLСтрока(КоличествоРаз));
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Если есть картинка "ИмяКартинки" Тогда
//@ЕстьКартинкаТогда(Парам01)
Процедура ЕстьКартинкаТогда(ИмяКартинки) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяКартинки);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя,"\","/");
	
	ИмяФайлаОтвета = ПолучитьИмяВременногоФайла("json");
	СтрокаКоманды = Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\PictExists.sikuli --args ""%1"" ""%2""";
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%1",ПутьКФайлу);
	СтрокаКоманды = СтрЗаменить(СтрокаКоманды,"%2",ИмяФайлаОтвета);
	Рез = Ванесса.ВыполнитьSikuliСкрипт(СтрокаКоманды, -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось выполнить SikuliX скрипт <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1","PictExists");
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
	
	Данные = ПрочитатьФайлJson(ИмяФайлаОтвета);
	Если Число(Данные.exists) = 1 Тогда
		Ванесса.УстановитьРезультатУсловия(Истина);
	Иначе	
		Ванесса.УстановитьРезультатУсловия(Ложь);
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Дано клик правой кнопкой на картинку "Тогда открылось окно"
//@КликПравойКнопкойНаКартинку(Парам01)
Процедура КликПравойКнопкойНаКартинку(ИмяФайла) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя,"\","/");
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\ClickRightOnPicture.sikuli --args """ + ПутьКФайлу + """" , -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось сделать клик праой кнопкой мышки по картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры

&НаКлиенте
//Дано курсор к картинке "Свернуть до фич"
//@КурсорККартинке(Парам01)
Процедура КурсорККартинке(ИмяФайла) Экспорт
	Файл = ПолучитьФайлКартинки(ИмяФайла);
	ПутьКФайлу = СтрЗаменить(Файл.ПолноеИмя,"\","/");
	
	Рез = Ванесса.ВыполнитьSikuliСкрипт(Ванесса.Объект.КаталогИнструментов + "\tools\Sikuli\MoveMouseToPicture.sikuli --args """ + ПутьКФайлу + """" , -1, Истина);
	Если Рез <> 0 Тогда
		ТекстСообщения = Ванесса.ПолучитьТекстСообщенияПользователю("Не получилось переместить курсор мышки к картинке <%1>.");
		ТекстСообщения = СтрЗаменить(ТекстСообщения,"%1",ИмяФайла);
		ВызватьИсключение ТекстСообщения;
	КонецЕсли;	 
КонецПроцедуры
