//@skip-check module-structure-method-in-regions
Процедура ОбработкаПроведения(Отказ,Режим)
	//{{__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	//Данный фрагмент построен конструктором.
	//При повторном использовании конструктора, внесенные вручную данные будут утеряны!

	// регистр ОстаткиНачисленийСтудентов
	Движения.ОстаткиНачисленийСтудентов.Записывать = Истина;
	Движение = Движения.ОстаткиНачисленийСтудентов.Добавить();
	Движение.Период = Дата;
	Движение.ВидДвижения = ВидДвиженияНакопления.Приход;
	Движение.Студент = Студент;
	Движение.Сумма = СуммаЗачисленнойОплаты;

	//}}__КОНСТРУКТОР_ДВИЖЕНИЙ_РЕГИСТРОВ
	
	ЗаписьОперации = РегистрыСведений.РегистрОпераций.СоздатьМенеджерЗаписи();
	ЗаписьОперации.Период = Дата;
	ЗаписьОперации.ТипОперации = "Начисление оплаты";
	ЗаписьОперации.Студент = Студент;
	ЗаписьОперации.Сумма = СуммаЗачисленнойОплаты;
	ЗаписьОперации.Записать();
КонецПроцедуры