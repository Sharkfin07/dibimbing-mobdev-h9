import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

Widget mainForm() {
  return Form(
    key: _formKey,
    child: Column(
      children: [
        myTextFormField(),
        ElevatedButton(
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              print("Form is valid!");
            } else {
              print("Not valid.");
            }
          },
          child: Text("Submit"),
        ),
      ],
    ),
  );
}

Widget myTextFormField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Email'),
    keyboardType: TextInputType.emailAddress,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Please enter your email';
      }
      return null;
    },
    onSaved: (value) {
      // Silakan isikan saja
    },
  );
}
