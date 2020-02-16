-- DROP TABLE faculty
CREATE TABLE faculty
  (
   faculty      NVARCHAR(10)      NOT NULL,
   faculty_name NVARCHAR(50), 
   CONSTRAINT PK_faculty PRIMARY KEY(faculty) 
  );
     
delete faculty;
insert into faculty (faculty,   faculty_name )
			values  ('ИДиП',   'Издателькое дело и полиграфия');
insert into faculty   (faculty,   faculty_name )
            values  ('ХТиТ',   'Химическая технология и техника');
insert into faculty   (faculty,   faculty_name )
            values  ('ЛХФ',     'Лесохозяйственный факультет');
insert into faculty   (faculty,   faculty_name )
            values  ('ИЭФ',     'Инженерно-экономический факультет');
insert into faculty   (faculty,   faculty_name )
            values  ('ТТЛП',    'Технология и техника лесной промышленности');
insert into faculty   (faculty,   faculty_name )
            values  ('ТОВ',     'Технология органических веществ');

--------------------------------------------------------------------------------------------
-- DROP TABLE pulpit
CREATE TABLE pulpit 
(
 pulpit       NVARCHAR(10)      NOT NULL,
 pulpit_name  NVARCHAR(100), 
 faculty      NVARCHAR(10)      NOT NULL, 
 CONSTRAINT FK_pulpit_faculty FOREIGN KEY(faculty)   REFERENCES faculty(faculty), 
 CONSTRAINT PK_pulpit PRIMARY KEY(pulpit) 
 ); 
 
delete pulpit;  
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty )
             values  ('ИСиТ',    'Иформационный систем и технологий ',                         'ИДиП'  );
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty )
             values  ('ПОиСОИ', 'Полиграфического оборудования и систем обработки информации ', 'ИДиП'  );
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
              values  ('ЛВ',      'Лесоводства',                                                 'ЛХФ') ;         
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
             values  ('ОВ',      'Охотоведения',                                                 'ЛХФ') ;   
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
             values  ('ЛУ',      'Лесоустройства',                                              'ЛХФ');           
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
             values  ('ЛЗиДВ',   'Лесозащиты и древесиноведения',                               'ЛХФ');                
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
             values  ('ЛПиСПС',  'Ландшафтного проектирования и садово-паркового строительства','ЛХФ');                  
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
             values  ('ТЛ',     'Транспорта леса',                                              'ТТЛП');                        
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
             values  ('ЛМиЛЗ',  'Лесных машин и технологии лесозаготовок',                      'ТТЛП');                        
insert into pulpit   (pulpit,    pulpit_name,                                                   faculty)
             values  ('ОХ',     'Органической химии',                                           'ТОВ');            
insert into pulpit   (pulpit,    pulpit_name,                                                              faculty)
             values  ('ТНХСиППМ','Технологии нефтехимического синтеза и переработки полимерных материалов','ТОВ');             
insert into pulpit   (pulpit,    pulpit_name,                                                      faculty)
             values  ('ТНВиОХТ','Технологии неорганических веществ и общей химической технологии ','ХТиТ');                    
insert into pulpit   (pulpit,    pulpit_name,                                                                         faculty)
             values  ('ХТЭПиМЭЕ','Химии, технологии электрохимических производств и материалов электронной техники', 'ХТиТ');
insert into pulpit   (pulpit,    pulpit_name,                                                      faculty)
             values  ('ЭТиМ',    'экономической теории и маркетинга',                              'ИЭФ');   
insert into pulpit   (pulpit,    pulpit_name,                                                      faculty)
             values  ('МиЭП',   'Менеджмента и экономики природопользования',                      'ИЭФ');    
------------------------------------------------------------------------------------------------------------------------        - DROP  TABLE teacher
CREATE TABLE teacher
 ( 
  teacher       NVARCHAR(10) NOT  NULL,
  teacher_name  NVARCHAR(50), 
  pulpit        NVARCHAR(10) NOT NULL, 
  CONSTRAINT PK_teacher  PRIMARY KEY(teacher), 
  CONSTRAINT FK_teacher_pulpit FOREIGN   KEY(pulpit)   REFERENCES pulpit(pulpit)
 ) ;
 
 
delete  teacher;
insert into  teacher    (teacher,   teacher_name, pulpit )
                       values  ('СМЛВ',    'Смелов Владимир Владиславович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('АКНВЧ',    'Акунович Станислав Иванович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('КЛСНВ',    'Колесников Леонид Валерьевич',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ГРМН',    'Герман Олег Витольдович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ЛЩНК',    'Лащенко Анатолий Пвалович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('БРКВЧ',    'Бракович Андрей Игорьевич',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ДДК',     'Дедко Александр Аркадьевич',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('КБЛ',     'Кабайло Александр Серафимович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('УРБ',     'Урбанович Павел Павлович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('РМНК',     'Романенко Дмитрий Михайлович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ПСТВЛВ',  'Пустовалова Наталия Николаевна', 'ИСиТ' );
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('?',     'Неизвестный',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                      values  ('ГРН',     'Гурин Николай Иванович',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ЖЛК',     'Жиляк Надежда Александровна',  'ИСиТ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('БРТШВЧ',   'Барташевич Святослав Александрович',  'ПОиСОИ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ЮДНКВ',   'Юденков Виктор Степанович',  'ПОиСОИ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('БРНВСК',   'Барановский Станислав Иванович',  'ЭТиМ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('НВРВ',   'Неверов Александр Васильевич',  'МиЭП');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('РВКЧ',   'Ровкач Андрей Иванович',  'ОВ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ДМДК', 'Демидко Марина Николаевна',  'ЛПиСПС');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('МШКВСК',   'Машковский Владимир Петрович',  'ЛУ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ЛБХ',   'Лабоха Константин Валентинович',  'ЛВ');
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ЗВГЦВ',   'Звягинцев Вячеслав Борисович',  'ЛЗиДВ'); 
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('БЗБРДВ',   'Безбородов Владимир Степанович',  'ОХ'); 
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ПРКПЧК',   'Прокопчук Николай Романович',  'ТНХСиППМ'); 
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('НСКВЦ',   'Насковец Михаил Трофимович',  'ТЛ'); 
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('МХВ',   'Мохов Сергей Петрович',  'ЛМиЛЗ'); 
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ЕЩНК',   'Ещенко Людмила Семеновна',  'ТНВиОХТ'); 
insert into  teacher    (teacher,  teacher_name, pulpit )
                       values  ('ЖРСК',   'Жарский Иван Михайлович',  'ХТЭПиМЭЕ'); 
---------------------------------------------------------------------------------------------------------------------
-- DROP TABLE subject 
CREATE TABLE subject
    (
     subject      NVARCHAR(10)     NOT NULL, 
     subject_name NVARCHAR(50)  NOT NULL,
     pulpit       NVARCHAR(10)     NOT NULL,  
     CONSTRAINT PK_subject PRIMARY KEY(subject),
     CONSTRAINT FK_subject_pulpit FOREIGN  KEY(pulpit)  REFERENCES pulpit(pulpit)
    );

delete subject;
insert into subject   (subject,   subject_name,        pulpit )
                       values ('СУБД',   'Системы управления базами данных',                   'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit)
                       values ('БД',     'Базы данных',                                        'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ИНФ',    'Информацтонные технологии',                          'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ОАиП',  'Основы алгоритмизации и программирования',            'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ПЗ',     'Представление знаний в компьютерных системах',       'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ПСП',    'Пограммирование сетевых приложений',                 'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('МСОИ',     'Моделирование систем обработки информации',        'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ПИС',     'Проектирование информационных систем',              'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('КГ',      'Компьютерная геометрия ',                           'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ПМАПЛ',   'Полиграфические машины, автоматы и поточные линии', 'ПОиСОИ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('КМС',     'Компьютерные мультимедийные системы',               'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ОПП',     'Организация полиграфического производства',         'ПОиСОИ');
insert into subject   (subject,   subject_name,                            pulpit)
               values ('ДМ',   'Дискретная матеатика',                     'ИСиТ');
insert into subject   (subject,   subject_name,                             pulpit )
               values ('МП',   'Математисеское программирование',          'ИСиТ');  
insert into subject   (subject,   subject_name,                             pulpit )
               values ('ЛЭВМ', 'Логические основы ЭВМ',                     'ИСиТ');                   
insert into subject   (subject,   subject_name,                             pulpit )
               values ('ООП',  'Объектно-ориентированное программирование', 'ИСиТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ЭП',     'Экономика природопользования',                       'МиЭП');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ЭТ',     'Экономическая теория',                               'ЭТиМ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('БЛЗиПсOO','Биология лесных зверей и птиц с осн. охотов.',      'ОВ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ОСПиЛПХ','Основы садовопаркового и лесопаркового хозяйства',  'ЛПиСПС');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ИГ',     'Инженерная геодезия ',                              'ЛУ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ЛВ',    'Лесоводство',                                        'ЛЗиДВ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ОХ',    'Органическая химия',                                 'ОХ');   
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ТРИ',    'Технология резиновых изделий',                      'ТНХСиППМ'); 
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ВТЛ',    'Водный транспорт леса',                             'ТЛ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ТиОЛ',   'Технология и оборудование лесозаготовок',           'ЛМиЛЗ'); 
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ТОПИ',   'Технология обогащения полезных ископаемых ',        'ТНВиОХТ');
insert into subject   (subject,   subject_name,        pulpit )
                       values ('ПЭХ',    'Прикладная электрохимия',                           'ХТЭПиМЭЕ');          
---------------------------------------------------------------------------------------------------------------------
-- DROP TABLE auditorium_type 
create table auditorium_type 
(
  auditorium_type   nvarchar(10) constraint auditorium_type_PK  primary key,  
  auditorium_typename  nvarchar(30) constraint auditorium_typename_NOT_NULL not null         
);

delete auditorium_type;
insert into auditorium_type   (auditorium_type,   auditorium_typename )
                       values  ('ЛК',   'Лекционная');
insert into auditorium_type   (auditorium_type,   auditorium_typename )
                       values  ('ЛБ-К',   'Компьютерный класс');
insert into auditorium_type   (auditorium_type,   auditorium_typename )
                       values  ('ЛК-К', 'Лекционная с уст. компьютерами');
insert into auditorium_type   (auditorium_type,   auditorium_typename )
                       values  ('ЛБ-X', 'Химическая лаборатория');
insert into auditorium_type   (auditorium_type,   auditorium_typename )
                       values  ('ЛБ-СК', 'Спец. компьютерный класс');
---------------------------------------------------------------------------------------------------------------------
-- DROP TABLE auditorium 
create table auditorium 
(
 auditorium           nvarchar(10) primary key,  -- код аудитории
 auditorium_name      nvarchar(200),          -- аудитория 
 auditorium_capacity  int,              -- вместимость
 auditorium_type      nvarchar(10) not null      -- тип аудитории
                      references auditorium_type(auditorium_type)  
);

delete  auditorium;
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('206-1',   '206-1', 'ЛБ-К', 15);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity)
                       values  ('301-1',   '301-1', 'ЛБ-К', 15);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('236-1',   '236-1', 'ЛК',   60);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('313-1',   '313-1', 'ЛК',   60);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('324-1',   '324-1', 'ЛК',   50);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('413-1',   '413-1', 'ЛБ-К', 15);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('423-1',   '423-1', 'ЛБ-К', 90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('408-2',   '408-2', 'ЛК',  90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('103-4',   '103-4', 'ЛК',  90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('105-4',   '105-4', 'ЛК',  90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('107-4',   '107-4', 'ЛК',  90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('110-4',   '110-4', 'ЛК',  30);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('111-4',   '111-4', 'ЛК',  30);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                      values  ('114-4',   '114-4', 'ЛК-К',  90 );
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values ('132-4',   '132-4', 'ЛК',   90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values ('02Б-4',   '02Б-4', 'ЛК',   90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values ('229-4',   '229-4', 'ЛК',   90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('304-4',   '304-4','ЛБ-К', 90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('314-4',   '314-4', 'ЛК',  90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('320-4',   '320-4', 'ЛК',  90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                       values  ('429-4',   '429-4', 'ЛК',  90);
insert into  auditorium   (auditorium,   auditorium_name, auditorium_type, auditorium_capacity )
                        values  ('?',   '???', 'ЛК',  90);
-----------------------------------------------------------------------------------------------------------------------



