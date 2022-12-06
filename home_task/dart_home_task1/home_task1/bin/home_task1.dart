import 'package:home_task1/home_task1.dart' as home_task1;

void main() {
  print('Первое задание \n');

  int chocolate = 2;      //хранит количество 
  int milk = 1;
  int coffee = 3;

  double priceOfChocolate = 10.1;
  double priceOfMilk = 15.1;        // стоимость в сомах за одну штуку
  double priceOfCofee = 13.1;
  
  double sumOfPriceChoclate = chocolate * priceOfChocolate;   // Стоимость за общее количество шоколадов
  double sumOfPriceMilk = milk * priceOfMilk;                 // Стоимость за общее количество Молока
  double sumOfPriceCoffee = coffee * priceOfCofee;            // Стоимость за общее количество Кофе

  double sum = sumOfPriceCoffee + sumOfPriceMilk + sumOfPriceChoclate; // общая стоимость продуктов 

  print('Стоимость за общее количество шоколадов: $sumOfPriceChoclate сом');
  print('Стоимость за общее количество молока: $sumOfPriceMilk сом ');
  print('Стоимость за общее количество кофе: $sumOfPriceCoffee\nОбщая стоимость покупки: $sum сом\n');

  print('Второе задание \n');
  
  int first = 4;
  int second = first + 3;
  int third = first + second;

  print('Первая переменная: $first');
  print('Вторая переменная: $second');
  print('Третья переменная: $third\n');

  print('Третье задание \n');

  int cups = 5; // количество чашек 
  int spoons = cups; // количество ложек 
  int saucers = spoons;// количество блюдца

  int amount = cups + spoons + saucers; 

  print('Общее количество предметов для сервироки стола: '+ amount.toString()+' штук');






}

