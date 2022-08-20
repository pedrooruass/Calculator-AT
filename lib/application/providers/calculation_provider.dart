import 'package:flutter/material.dart';

class CalculationProvider extends ChangeNotifier {
  String showNumber = '0';
  double? calcNumber1;
  String operation = '';
  double? calcNumber2;
  String result = '';

  addNumber(String value) {
    if (showNumber == "0") {
      showNumber = "";
    }
    if (showNumber == '-') {
      showNumber = '-0';
    }
    if (showNumber == '.') {
      showNumber = '0.';
    }
    showNumber += value;
    notifyListeners();
  }

  addSign() {
    if (showNumber == "0") {
      showNumber = "";
    }
    if (showNumber.contains('-')) {
      showNumber = showNumber.replaceAll('-', '');
    } else {
      showNumber = '-$showNumber';
    }
    notifyListeners();
  }

  saveOperation(String value) {
    saveNumber();
    operation = value;
    print(
        'operation: $operation, calcNumber1: $calcNumber1, calcNumber2: $calcNumber2');
    notifyListeners();
  }

  saveNumber() {
    if (calcNumber1 == null) {
      calcNumber1 = double.parse(
          showNumber); // verificar se esta convertendo corretamente
    } else {
      calcNumber2 = double.parse(showNumber);
    }
    showNumber = "0";
    notifyListeners();
  }

  calculate() {
    saveNumber(); // pra salvar o segundo numero.
    if (operation == '+') {
      result = (calcNumber1! + calcNumber2!).toString();
    } else if (operation == '-') {
      result = (calcNumber1! - calcNumber2!).toString();
    } else if (operation == '*') {
      result = (calcNumber1! * calcNumber2!).toString();
    } else if (operation == '/') {
      result = (calcNumber1! / calcNumber2!).toString();
    } else if (operation == '%') {
      saveNumber(); // pra salvar o segundo numero.
      result = (calcNumber1! / 100).toString();
      calcNumber1 = null; // reseta o primeiro numero
    }
    clear(); // reseta os numeros e operacoes
    showNumber =
        result; // mostra o resultado novamente para que possa ser salvo no calcNumero1,
    if (operation != '%') {
      operation = '=';
    }
    calcNumber2 = null; // pra resetar o segundo numero.
    notifyListeners();
  }

  clear() {
    showNumber = '0';
    calcNumber1 = null;
    operation = '';
    calcNumber2 = null;
    notifyListeners();
  }
}
