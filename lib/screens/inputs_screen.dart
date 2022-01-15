// ignore_for_file: avoid_print

import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'email': '',
      'password': '',
      'role': ''
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                CustomInputField(
                  formProperty: 'first_name',
                  formValues: formValues,
                  labelText: 'Nombre',
                  hintText: 'Nombre de usuario',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  formProperty: 'last_name',
                  formValues: formValues,
                  labelText: 'Apellido',
                  hintText: 'Apellido de usuario',
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues,
                  labelText: 'Email',
                  hintText: 'Email de usuario,',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 30),
                CustomInputField(
                  formProperty: 'password',
                  formValues: formValues,
                  labelText: 'Contraseña',
                  hintText: 'Contraseña,',
                  keyboardType: TextInputType.emailAddress,
                  isPassword: true,
                ),
                const SizedBox(height: 30),
                DropdownButtonFormField<String>(
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'Jr Developer', child: Text('Jr Developer')),
                  ],
                  onChanged: (value) {
                    print(value);
                    formValues['role'] = value ?? 'admin';
                  },
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  child: const Center(
                    child: SizedBox(
                      width: double.infinity,
                      child: Text('Guardar', textAlign: TextAlign.center),
                    ),
                  ),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    if (!myFormKey.currentState!.validate()) {
                      print('formulario no valido');
                      return;
                    }

                    //* imprimir valores del formulario
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
