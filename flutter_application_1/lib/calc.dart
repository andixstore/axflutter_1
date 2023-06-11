import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatorPage(),
    );
  }
}

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String _output = '';
  double _result = 0;
  double _firstNumber = 0;
  double _secondNumber = 0;
  String _operator = '';

  void _calculateResult() {
    double num1 = _firstNumber;
    double num2 = _secondNumber;
    switch (_operator) {
      case '+':
        _result = num1 + num2;
        break;
      case '-':
        _result = num1 - num2;
        break;
      case '*':
        _result = num1 * num2;
        break;
      case '/':
        _result = num1 / num2;
        break;
    }
    _output = _result.toString();
  }

  void _onNumberButtonPressed(String value) {
    setState(() {
      _output += value;
    });
  }

  void _onOperatorButtonPressed(String operator) {
    setState(() {
      _firstNumber = double.parse(_output);
      _operator = operator;
      _output = '';
    });
  }

  void _onClearButtonPressed() {
    setState(() {
      _output = '';
      _result = 0;
      _firstNumber = 0;
      _secondNumber = 0;
      _operator = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Text(
                _output,
                style: TextStyle(fontSize: 48),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('7'),
              _buildNumberButton('8'),
              _buildNumberButton('9'),
              _buildOperatorButton('/'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('4'),
              _buildNumberButton('5'),
              _buildNumberButton('6'),
              _buildOperatorButton('*'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('1'),
              _buildNumberButton('2'),
              _buildNumberButton('3'),
              _buildOperatorButton('-'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildNumberButton('0'),
              _buildOperatorButton('+'),
              _buildClearButton(),
              _buildEqualsButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNumberButton(String number) {
    return TextButton(
      onPressed: () => _onNumberButtonPressed(number),
      child: Text(
        number,
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildOperatorButton(String operator) {
    return TextButton(
      onPressed: () => _onOperatorButtonPressed(operator),
      child: Text(
        operator,
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildClearButton() {
    return TextButton(
      onPressed: _onClearButtonPressed,
      child: Text(
        'C',
        style: TextStyle(fontSize: 24),
      ),
    );
  }

  Widget _buildEqualsButton() {
    return TextButton(
      onPressed: () {
        _secondNumber = double.parse(_output);
        _calculateResult();
      },
      child: Text(
        '=',
        style: TextStyle(fontSize: 24, color: Colors.blue),
      ),
    );
  }
}
