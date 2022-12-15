import 'package:practice_task3/practice_task3.dart' as practice_task3;

void main() {
  print('1)');
  var usersHand = 1;
  if (usersHand == 1) {
    print('большой палец');
  } else if (usersHand == 2) {
    print('Указательный палец');
  } else if (usersHand == 3) {
    print('Средний  палец');
  } else if (usersHand == 4) {
    print('Безымянный  палец');
  } else if (usersHand == 5) {
    print('Мизинчик ');
  } else {
    print('Введите в диапазоне "1" до "5"');
  }

  print('2)');
  var min = 10;
  if (min >= 0 && min <= 14) {
    print('В первую четверть.');
  } else if (min >= 15 && min <= 30) {
    print('Во вторую четверть.');
  } else if (min >= 31 && min <= 45) {
    print('В третью четверть.');
  } else if (min >= 46 && min <= 59) {
    print('В четвертую четверть.');
  } else {
    print('Введите в диапозоне от "0" до "59"');
  }

  print('3)');
  var lang = 'ru'; // Введите 'ru' или 'en'
  if (lang == 'ru') {
    var arr = ['пн', 'вт', 'ср', 'чт', 'пт', 'сб', 'вс'];
    print(arr);
  } else if (lang == 'en') {
    var arr = ['mn', 'ts', 'wd', 'th', 'fr', 'st', 'sn'];
    print(arr);
  } else {
    print('Введите "ru" или "en"');
  }

  print('4)');
  String stroka = 'abcde';
  if (stroka[0] == 'a') {
    print('Да');
  } else {
    print('нет');
  }

  print('5)');
  var num = 3;
  if (num == 1) {
    var result = 'Зима';
    print(result);
  } else if (num == 2) {
    var result = 'Лето';
    print(result);
  } else if (num == 3) {
    var result = 'Весна';
    print(result);
  } else if (num == 4) {
    var result = 'Осень';
    print(result);
  } else {
    var result = 'Введите в диапазоне от "1" до "4"';
    print(result);
  }

  print('6)');
  var a = 1; //Первая проверка
  if (a < 0) {
    print('Верно');
  } else {
    print('Неверно');
  }
  var b = 0; //Вторая проверка
  if (b < 0) {
    print('Верно');
  } else {
    print('Неверно');
  }
  var c = -3; //Третяя проверка
  if (c < 0) {
    print('Верно');
  } else {
    print('Неверно');
  }
  print('7)');
  String ints = '456456';
  if (int.parse(ints[0]) + int.parse(ints[1]) + int.parse(ints[2]) ==
      int.parse(ints[3]) + int.parse(ints[4]) + int.parse(ints[5])) {
    print('Да');
  } else {
    print('нет');
  }

  print('8)');
  var red = 'нет';
  var yellow = 'нет';
  var green = 'да';
  if (red == "да" &&
      yellow == "нет" &&
      green == "нет") /* Если горит красный сигнал */ {
    print("При красном сигнале стоим - дорогу переходить нельзя!");
  } else if (red == "нет" &&
      yellow == "да" &&
      green == "нет") /* Если горит жёлтый сигнал */
  {
    print(
        "При жёлтом сигнале нужно приготовиться, но дорогу пока переходить нельзя!");
  } else if (red == "нет" &&
      yellow == "нет" &&
      green == "да") /* Если горит зеленный сигнал */
  {
    print("Зелёный сигнал - переходим дорогу.");
  } else if (red == "нет" &&
      yellow == "нет" &&
      green == "нет") /* Ничего не горит  */ {
    print('Светофор не работает');
  } else {
    print('Светофор  работает неправильно'); //если неправильно указали
  }
}
