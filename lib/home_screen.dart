import 'package:flutter/material.dart';
import 'package:ostad_flutter_live_class/build_text_form_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _firstNumTEController = TextEditingController();
  final TextEditingController _secondNumTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  double _result = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculate'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              BuildTextFormField(
                  controller: _firstNumTEController,
                  labelText: 'First Number',
                  hintText: 'Enter your first number'),

              const SizedBox(height: 24),

              BuildTextFormField(
                  controller: _secondNumTEController,
                  labelText: 'Second Number',
                  hintText: 'Enter your second number'),

              const SizedBox(height: 24),

              _buildButtonBar(),

              const SizedBox(height: 24),

              _buildText(), //option + command + m
            ],
          ),
        ),
      ),
    );
  }

  ButtonBar _buildButtonBar() {
    return ButtonBar(
      alignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: _onTapAddButton,
          icon: const Icon(Icons.add),
        ),
        IconButton(
          onPressed: _onTapSubtractButton,
          icon: const Icon(Icons.remove),
        ),
        TextButton(
          onPressed: _onTapDivideButton,
          child: Text(
            '/',
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey.shade700,
            ),
          ),
        ),
        TextButton(
          onPressed: _onTapMultiplyButton,
          child: Text(
            '*',
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey.shade700,
            ),
          ),
        ),
      ],
    );
  }

  Text _buildText() {
    return Text(
      'Result : ${_result.toStringAsFixed(2)}',
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  void _onTapAddButton() {
    // if (!_validateTextFields()){
    //   return;
    // }
    // if (_validateTextFields() == false){
    //   return;
    // }
    if (_formKey.currentState!.validate()) {
      double firstNumber = double.tryParse(_firstNumTEController.text) ?? 0;
      double secondNumber = double.tryParse(_secondNumTEController.text) ?? 0;
      _result = firstNumber + secondNumber;
      setState(() {});
    }
  }

  void _onTapSubtractButton() {
    if (_formKey.currentState!.validate()) {
      double firstNumber = double.tryParse(_firstNumTEController.text) ?? 0;
      double secondNumber = double.tryParse(_firstNumTEController.text) ?? 0;
      _result = firstNumber - secondNumber;
      setState(() {});
    }
  }

  void _onTapDivideButton() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }
    double firstNumber = double.tryParse(_firstNumTEController.text) ?? 0;
    double secondNumber = double.tryParse(_firstNumTEController.text) ?? 0;
    _result = firstNumber / secondNumber;
    setState(() {});
  }

  void _onTapMultiplyButton() {
    if (_formKey.currentState!.validate() == false) {
      return;
    }
    double firstNumber = double.tryParse(_firstNumTEController.text) ?? 0;
    double secondNumber = double.tryParse(_firstNumTEController.text) ?? 0;
    _result = firstNumber * secondNumber;
    setState(() {});
  }

// bool _validateTextFields() {
//   if (_firstNumTEController.text.isEmpty) {
//     return false;
//   }
//   if (_secondNumTEController.text.isEmpty) {
//     return false;
//   }
//   return true;
// }
}
