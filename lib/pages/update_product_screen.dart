import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _productNameTEController =
  TextEditingController();

  final TextEditingController _unitPriceTEController = TextEditingController();

  final TextEditingController _totalPriceTEController = TextEditingController();

  final TextEditingController _imageTEController = TextEditingController();

  final TextEditingController _codeTEController = TextEditingController();

  final TextEditingController _quantityTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('U P D A T E P R O D U C T'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildUpdateProductForm(),
      ),
    );
  }

  Widget _buildUpdateProductForm() {
    return Form(
      key: _formKey,
      child: Column(
        children: [
        TextFormField(
        controller: _productNameTEController,
        decoration: const InputDecoration(
          labelText: 'Product Name',
          hintText: 'Name',
        ),
      ),
      TextFormField(
        controller: _unitPriceTEController,
        decoration: const InputDecoration(
          labelText: 'Unit Price',
          hintText: 'Unit Price',
        ),
      ),
      TextFormField(
        controller: _totalPriceTEController,
        decoration: const InputDecoration(
          labelText: 'Total Price',
          hintText: 'Total Price',
        ),
      ),
      TextFormField(
        controller: _imageTEController,
        decoration: const InputDecoration(
          labelText: 'Image',
          hintText: 'Product Image',
        ),
      ),
      TextFormField(
        controller: _codeTEController,
        decoration: const InputDecoration(
          labelText: 'Product Code',
          hintText: 'Product Code',
        ),
      ),
      TextFormField(
        controller: _quantityTEController,
        decoration: const InputDecoration(
          labelText: 'Quantity',
          hintText: 'Quantity',
        ),
      ),
      const SizedBox(height: 24),
      ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey.shade700,
            foregroundColor: Colors.grey.shade200,
            fixedSize: const Size.fromWidth(double.maxFinite),
          ),
          onPressed: _onTapAddProductButton,
          child: const Text('Update'),
    ),]
    ,
    )
    ,
    );
  }

  void _onTapAddProductButton() {}

  @override
  void dispose() {
    _productNameTEController.dispose();
    _unitPriceTEController.dispose();
    _totalPriceTEController.dispose();
    _codeTEController.dispose();
    _imageTEController.dispose();
    _quantityTEController.dispose();
    super.dispose();
  }
}
