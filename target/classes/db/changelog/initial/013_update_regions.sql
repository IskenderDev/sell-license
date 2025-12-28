UPDATE regions SET region_name = 'Москва' WHERE region_code IN ('77', '97', '99', '177', '197', '199', '777', '797', '799', '977');
UPDATE regions SET region_name = 'Московская область' WHERE region_code IN ('50', '90', '150', '190', '250', '550', '750', '790');

-- Республики (Убираем слово "Республика" и скобки)
UPDATE regions SET region_name = 'Адыгея' WHERE region_code IN ('01', '101');
UPDATE regions SET region_name = 'Башкортостан' WHERE region_code IN ('02', '102', '700', '702');
UPDATE regions SET region_name = 'Бурятия' WHERE region_code IN ('03', '103');
UPDATE regions SET region_name = 'Алтай' WHERE region_code IN ('04', '104');
UPDATE regions SET region_name = 'Дагестан' WHERE region_code = '05';
UPDATE regions SET region_name = 'Ингушетия' WHERE region_code = '06';
UPDATE regions SET region_name = 'Кабардино-Балкария' WHERE region_code = '07';
UPDATE regions SET region_name = 'Калмыкия' WHERE region_code = '08';
UPDATE regions SET region_name = 'Карачаево-Черкесия' WHERE region_code IN ('09', '109');
UPDATE regions SET region_name = 'Карелия' WHERE region_code = '10';
UPDATE regions SET region_name = 'Коми' WHERE region_code IN ('11', '111');
UPDATE regions SET region_name = 'Марий Эл' WHERE region_code = '12';
UPDATE regions SET region_name = 'Мордовия' WHERE region_code IN ('13', '113');
UPDATE regions SET region_name = 'Саха (Якутия)' WHERE region_code = '14';
UPDATE regions SET region_name = 'Северная Осетия — Алания' WHERE region_code = '15';
UPDATE regions SET region_name = 'Татарстан' WHERE region_code IN ('16', '116', '716');
UPDATE regions SET region_name = 'Тыва' WHERE region_code = '17';
UPDATE regions SET region_name = 'Удмуртия' WHERE region_code IN ('18', '118');
UPDATE regions SET region_name = 'Хакасия' WHERE region_code = '19';
UPDATE regions SET region_name = 'Чечня' WHERE region_code IN ('20', '95');
UPDATE regions SET region_name = 'Чувашия' WHERE region_code IN ('21', '121');
UPDATE regions SET region_name = 'Крым' WHERE region_code IN ('82', '182');

-- Края
UPDATE regions SET region_name = 'Алтайский край' WHERE region_code IN ('22', '122');
UPDATE regions SET region_name = 'Краснодарский край' WHERE region_code IN ('23', '93', '123', '193', '323');
UPDATE regions SET region_name = 'Красноярский край' WHERE region_code IN ('24', '88', '124');
UPDATE regions SET region_name = 'Приморский край' WHERE region_code IN ('25', '125', '725');
UPDATE regions SET region_name = 'Ставропольский край' WHERE region_code IN ('26', '126');
UPDATE regions SET region_name = 'Хабаровский край' WHERE region_code = '27';
UPDATE regions SET region_name = 'Пермский край' WHERE region_code IN ('59', '159');
UPDATE regions SET region_name = 'Забайкальский край' WHERE region_code = '75';
UPDATE regions SET region_name = 'Камчатский край' WHERE region_code = '41';

-- Области
UPDATE regions SET region_name = 'Амурская область' WHERE region_code = '28';
UPDATE regions SET region_name = 'Архангельская область' WHERE region_code = '29';
UPDATE regions SET region_name = 'Астраханская область' WHERE region_code IN ('30', '130');
UPDATE regions SET region_name = 'Белгородская область' WHERE region_code = '31';
UPDATE regions SET region_name = 'Брянская область' WHERE region_code = '32';
UPDATE regions SET region_name = 'Владимирская область' WHERE region_code = '33';
UPDATE regions SET region_name = 'Волгоградская область' WHERE region_code IN ('34', '134');
UPDATE regions SET region_name = 'Вологодская область' WHERE region_code = '35';
UPDATE regions SET region_name = 'Воронежская область' WHERE region_code IN ('36', '136');
UPDATE regions SET region_name = 'Ивановская область' WHERE region_code = '37';
UPDATE regions SET region_name = 'Иркутская область' WHERE region_code IN ('38', '138');
UPDATE regions SET region_name = 'Калининградская область' WHERE region_code IN ('39', '91', '139');
UPDATE regions SET region_name = 'Калужская область' WHERE region_code IN ('40', '140');
UPDATE regions SET region_name = 'Кемеровская область (Кузбасс)' WHERE region_code IN ('42', '142');
UPDATE regions SET region_name = 'Кировская область' WHERE region_code = '43';
UPDATE regions SET region_name = 'Костромская область' WHERE region_code = '44';
UPDATE regions SET region_name = 'Курганская область' WHERE region_code = '45';
UPDATE regions SET region_name = 'Курская область' WHERE region_code = '46';
UPDATE regions SET region_name = 'Ленинградская область' WHERE region_code IN ('47', '147');
UPDATE regions SET region_name = 'Липецкая область' WHERE region_code = '48';
UPDATE regions SET region_name = 'Магаданская область' WHERE region_code = '49';
UPDATE regions SET region_name = 'Мурманская область' WHERE region_code = '51';
UPDATE regions SET region_name = 'Нижегородская область' WHERE region_code IN ('52', '152', '252');
UPDATE regions SET region_name = 'Новгородская область' WHERE region_code = '53';
UPDATE regions SET region_name = 'Новосибирская область' WHERE region_code IN ('54', '154', '754');
UPDATE regions SET region_name = 'Омская область' WHERE region_code IN ('55', '155');
UPDATE regions SET region_name = 'Оренбургская область' WHERE region_code IN ('56', '156');
UPDATE regions SET region_name = 'Орловская область' WHERE region_code = '57';
UPDATE regions SET region_name = 'Пензенская область' WHERE region_code IN ('58', '158');
UPDATE regions SET region_name = 'Псковская область' WHERE region_code = '60';
UPDATE regions SET region_name = 'Ростовская область' WHERE region_code IN ('61', '161', '761');
UPDATE regions SET region_name = 'Рязанская область' WHERE region_code = '62';
UPDATE regions SET region_name = 'Самарская область' WHERE region_code IN ('63', '163', '763');
UPDATE regions SET region_name = 'Саратовская область' WHERE region_code IN ('64', '164');
UPDATE regions SET region_name = 'Сахалинская область' WHERE region_code = '65';
UPDATE regions SET region_name = 'Свердловская область' WHERE region_code IN ('66', '96', '196');
UPDATE regions SET region_name = 'Смоленская область' WHERE region_code = '67';
UPDATE regions SET region_name = 'Тамбовская область' WHERE region_code = '68';
UPDATE regions SET region_name = 'Тверская область' WHERE region_code IN ('69', '169');
UPDATE regions SET region_name = 'Томская область' WHERE region_code = '70';
UPDATE regions SET region_name = 'Тульская область' WHERE region_code = '71';
UPDATE regions SET region_name = 'Тюменская область' WHERE region_code IN ('72', '172');
UPDATE regions SET region_name = 'Ульяновская область' WHERE region_code IN ('73', '173');
UPDATE regions SET region_name = 'Челябинская область' WHERE region_code IN ('74', '174', '774');
UPDATE regions SET region_name = 'Ярославская область' WHERE region_code = '76';
UPDATE regions SET region_name = 'Херсонская область' WHERE region_code IN ('84', '184');
UPDATE regions SET region_name = 'Запорожская область' WHERE region_code IN ('85', '185');
UPDATE regions SET region_name = 'Харьковская область' WHERE region_code = '188';

-- Города
UPDATE regions SET region_name = 'Санкт-Петербург' WHERE region_code IN ('78', '98', '178', '198');
UPDATE regions SET region_name = 'Севастополь' WHERE region_code IN ('92', '192');

-- Автономные округа и области (сокращения)
UPDATE regions SET region_name = 'ХМАО' WHERE region_code IN ('86', '186');
UPDATE regions SET region_name = 'Чукотский АО' WHERE region_code = '87';
UPDATE regions SET region_name = 'Ямало-Ненецкий АО' WHERE region_code = '89';
UPDATE regions SET region_name = 'Еврейская АО' WHERE region_code = '79';
UPDATE regions SET region_name = 'ДНР' WHERE region_code IN ('80', '180');
UPDATE regions SET region_name = 'ЛНР' WHERE region_code IN ('81', '181');
UPDATE regions SET region_name = 'Байконур' WHERE region_code = '94';
UPDATE regions SET region_name = 'Ненецкий АО' WHERE region_code = '83';