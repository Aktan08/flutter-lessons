import 'dart:math';
import 'package:home_task_3_day/home_task_3_day.dart' as home_task_3_day;

void main() {
  print('1)'); //Первое задание
  var hour = (Random().nextInt(24)); //до 24 так как не включительно
  var minut = (Random().nextInt(60)); //до 60 так как не включительно
  print('$hour:$minut');

  if (hour >= 6 && hour < 19) {
    print("На улице светло");
  } else {
    print("на улице темно");
  }

  print('2)'); //Второе задание

  var salary = (Random().nextInt(500000) +
      10001); // плюс 10001 так как 500000 не включительно получилось бы
  print('Ваш доход:$salary');
  if (salary <= 100000) {
    var sumnalog = (salary / 100 * 5);
    var minussalary = salary - sumnalog;
    print(
        'Ваш заработок после вычета налогов: $minussalary\nСумма налога: $sumnalog\nПроцент налога 5%');
  } else if (salary > 100000 && salary <= 200000) {
    var sumnalog = (salary / 100 * 7);
    var minussalary = salary - sumnalog;
    print(
        'Ваш заработок после вычета налогов: $minussalary\nСумма налога: $sumnalog\nПроцент налога 7%');
  } else if (salary > 200000) {
    var sumnalog = (salary / 100 * 10); //Сумма налога
    var minussalary = salary - sumnalog; //Сумма вычтенного процента от доходов
    print(
        'Ваш заработок после вычета налогов: $minussalary\nСумма налога: $sumnalog\nПроцент налога 10%');
  }

  print('3)'); //Третее задание
  var month = (Random().nextInt(12) + 1);

  List mesathhy = [
    ["Декабрь", "Январь", "Февраль"],
    ["Март", "Апрель", "Май"],
    ["Июнь", "Июль", "Август"],
    ["Сентябрь", "Октябрь", "Ноябрь"],
  ];

  if (month == 1) {
    print('${mesathhy[0][1]},Зима.');
  } else if (month == 2) {
    print('Число $month-${mesathhy[0][2]},Зима.');
  } else if (month == 3) {
    print('Число $month-${mesathhy[1][0]},Весна.');
  } else if (month == 4) {
    print('Число$month-${mesathhy[1][1]},Весна.');
  } else if (month == 5) {
    print('Число $month-${mesathhy[1][2]},Весна.');
  } else if (month == 6) {
    print('Число $month-${mesathhy[2][0]},Лето.');
  } else if (month == 7) {
    print('Число $month-${mesathhy[2][1]},Лето.');
  } else if (month == 8) {
    print('Число $month-${mesathhy[2][2]},Лето.');
  } else if (month == 9) {
    print('Число-$month ${mesathhy[3][0]},Осень.');
  } else if (month == 10) {
    print('Число $month-${mesathhy[3][1]},Осень.');
  } else if (month == 11) {
    print('Число $month-${mesathhy[3][2]},Осень.');
  } else if (month == 12) {
    print('Число $month-${mesathhy[0][0]},Зима.');
  }
}
