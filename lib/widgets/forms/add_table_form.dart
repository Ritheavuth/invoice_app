import 'package:flutter/material.dart';

class AddTableForm extends StatefulWidget {
  const AddTableForm({Key? key}) : super(key: key);

  @override
  State<AddTableForm> createState() => _AddTableFormState();
}

class _AddTableFormState extends State<AddTableForm> {
  final _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      Navigator.of(context).pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Add Table'),
      content: Form(
        key: _formKey,
        child: TextFormField(
          decoration: const InputDecoration(labelText: 'Table Number'),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Please enter a table number';
            }
            return null;
          },
          onSaved: (value) {},
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submitForm,
          child: const Text('Save'),
        ),
      ],
    );
  }
}
