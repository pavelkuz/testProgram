CREATE TABLE `test`.`examinee` (
                                 `id` INT NOT NULL AUTO_INCREMENT,
                                 `fio` NVARCHAR(255) NOT NULL,
                                 `class` NVARCHAR(45) NULL,
                                 PRIMARY KEY (`id`))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf32;

CREATE TABLE `test`.`questions` (
                                  `id` INT NOT NULL AUTO_INCREMENT,
                                  `question` NVARCHAR(500) NOT NULL,
                                  `answer_id` INT NOT NULL,
                                  PRIMARY KEY (`id`))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

CREATE TABLE `test`.`answers` (
                                `id` INT NOT NULL AUTO_INCREMENT,
                                `answer` NVARCHAR(255) NOT NULL,
                                PRIMARY KEY (`id`))
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;

ALTER TABLE `test`.`questions`
  ADD INDEX `answer_id_idx` (`answer_id` ASC) VISIBLE;
;
ALTER TABLE `test`.`questions`
  ADD CONSTRAINT `answer_id`
    FOREIGN KEY (`answer_id`)
      REFERENCES `test`.`answers` (`id`)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION;

INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('1', '35');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('2', '45');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('3', '55');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('4', '60');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('5', '30');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('6', 'хан Младшего жуза');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('7', 'хан Среднего жуза');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('8', 'хан Старшего жуза');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('9', 'не был ханом');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('10', 'был ханом джунгарского ханства');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('11', 'В 1726 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('12', 'В 1500 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('13', 'В 1300 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('14', 'В 1900 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('15', 'В 2000 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('16', 'в освободительной войне казахов против джунгарского нашествия и победоносном завершении этой войны');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('17', 'в становлении письменности');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('18', 'в поэзии');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('19', 'в аграрной отрасле');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('20', 'в коневодческой отрасле');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('21', 'В г. Ташкент');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('22', 'В г. Бурабай');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('23', 'В г. Ашхабат');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('24', 'В г. Туркестан');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('25', 'В г. Алма-ата');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('26', '1750 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('27', '1850 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('28', '1650 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('29', '1710 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('30', '2000 г');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('31', '1663');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('32', '1763');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('33', '1613');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('34', '1563');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('35', '1513');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('36', 'Старшего');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('37', 'Среднего');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('38', 'Младшего');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('39', 'Большого');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('40', 'Огромного');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('41', 'Тауке, позже - хана Абылая');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('42', 'Абылая, позже - хана Тауке');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('43', 'Богенбая, позже - хана Айтеке би');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('44', 'Абылая, позже - хана Богенбая');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('45', 'Айтеке, позже - хана Тауке');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('46', '1682');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('47', '1782');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('48', '1582');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('49', '1882');
INSERT INTO `test`.`answers` (`id`, `answer`) VALUES ('50', '1982');

INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('1', 'Сколь лет Тауке Хан был ханом Казахского ханства?', '1');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('2', 'Ханом какого жуза был Абулхаир хан?', '6');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('3', 'В каком году в местности Ордабасы (на западе от г. Чимкента) состоялось собрание представителей всех трех жузов?', '11');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('4', 'В чем особое место Абылай хана в истории казахского ханства?', '16');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('5', 'В каком городе Богенбай окончил обучение в школе сарбазов?', '21');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('6', 'Последний крупный поход Богенбай батыра состоялся в?', '26');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('7', 'В каком году родился Толе би Алибекулы?', '31');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('8', 'Тауке хан назначил молодого Толе бием какого жуза?', '36');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('9', 'Казыбек би Кельдибекулы был организатором всенародной борьбы против захватчиков и советником ханов?', '41');
INSERT INTO `test`.`questions` (`id`, `question`, `answer_id`) VALUES ('10', 'В каком году родился Айтеке би?', '46');

CREATE TABLE `test`.`question_answer_list` (
                                             `question_id` INT NOT NULL,
                                             `answer_id` INT NOT NULL,
                                             INDEX `question_id_question_idx` (`question_id` ASC) VISIBLE,
                                             INDEX `answer_id_answer_idx` (`answer_id` ASC) VISIBLE,
                                             CONSTRAINT `question_id_question`
                                               FOREIGN KEY (`question_id`)
                                                 REFERENCES `test`.`questions` (`id`)
                                                 ON DELETE NO ACTION
                                                 ON UPDATE NO ACTION,
                                             CONSTRAINT `answer_id_answer`
                                               FOREIGN KEY (`answer_id`)
                                                 REFERENCES `test`.`answers` (`id`)
                                                 ON DELETE NO ACTION
                                                 ON UPDATE NO ACTION)
  ENGINE = InnoDB
  DEFAULT CHARACTER SET = utf8;


INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('1', '1');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('1', '2');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('1', '3');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('1', '4');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('1', '5');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('2', '6');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('2', '7');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('2', '8');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('2', '9');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('2', '10');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('3', '11');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('3', '12');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('3', '13');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('3', '14');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('3', '15');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('4', '16');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('4', '17');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('4', '18');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('4', '19');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('4', '20');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('5', '21');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('5', '22');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('5', '23');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('5', '24');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('5', '25');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('6', '26');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('6', '27');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('6', '28');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('6', '29');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('6', '30');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('7', '31');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('7', '32');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('7', '33');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('7', '34');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('7', '35');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('8', '36');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('8', '37');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('8', '38');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('8', '39');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('8', '40');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('9', '41');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('9', '42');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('9', '43');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('9', '44');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('9', '45');
--***
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('10', '46');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('10', '47');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('10', '48');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('10', '49');
INSERT INTO `test`.`question_answer_list` (`question_id`, `answer_id`) VALUES ('10', '50');

--*****

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('1', '1');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('1', '2');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('1', '3');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('1', '4');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('1', '5');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('2', '6');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('2', '7');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('2', '8');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('2', '9');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('2', '10');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('3', '11');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('3', '12');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('3', '13');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('3', '14');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('3', '15');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('4', '16');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('4', '17');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('4', '18');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('4', '19');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('4', '20');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('5', '21');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('5', '22');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('5', '23');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('5', '24');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('5', '25');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('6', '26');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('6', '27');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('6', '28');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('6', '29');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('6', '30');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('7', '31');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('7', '32');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('7', '33');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('7', '34');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('7', '35');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('8', '36');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('8', '37');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('8', '38');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('8', '39');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('8', '40');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('9', '41');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('9', '42');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('9', '43');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('9', '44');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('9', '45');

INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('10', '46');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('10', '47');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('10', '48');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('10', '49');
INSERT INTO test.question_answer_list (`question_id`, `answer_id`) VALUES ('10', '50');