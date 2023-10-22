import 'dart:io';

import 'package:homework_currency/homework_currency.dart' as homework_currency;

void main(List<String> arguments) {
  func();
}

func(){
  Map<String, double> exchangeRates = {
    "USD": 88.30, 
    "EUR": 94.10, 
    "RUB": 0.89,
  };

  print("Курсы валют:");
  exchangeRates.forEach((currency, rate) {
    print("$currency: $rate");
  });

  print("\nВыберите операцию \n1 - обмен сомов на валюту \n2 - обмен валюты на сомы");
  int operation = int.parse(stdin.readLineSync()!);

  print("\nВалюта \nUSD \nEUR \nRUB ");
  String currency = stdin.readLineSync()!.toUpperCase();

  if (!exchangeRates.containsKey(currency)) {
    print("Выбранной валюты нет в списке.");
    return;
  }

  print("\nСколько $currency хотите получить?");
  double amount = double.parse(stdin.readLineSync()!);

  if (operation == 1) {
    double result = amount / exchangeRates[currency]!;
    print("Вы получите $result сом за $amount $currency.");
  } else if (operation == 2) {
    double result = amount * exchangeRates[currency]!;
    print("Вам нужно $result сом для покупки $amount $currency.");
  } else {
    print("Неверный выбор операции.");
  }
}
  







