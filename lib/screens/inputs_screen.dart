import 'package:desings_components/widget/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'roxana',
      'last_name': 'guerra',
      'email': 'sguerra',
      'password': '1346',
      'role': 'admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              // key: es para mantener una referencia
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre de usuario',
                    formProperty: 'first_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido de usuario',
                    formProperty: 'last_name',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo de usuario',
                    keyboardType: TextInputType.emailAddress, // tipo de dato
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del usuario',
                    obscureText: true, // solo si son password, se envia true
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                    value: 'Admin',
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'Superuser',
                        child: Text('Superuser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Jr. Developer',
                        child: Text('Jr. Developer'),
                      ),
                    ],
                    onChanged: (value) {
                      // print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
                  ),
                  ElevatedButton(
                    child: const SizedBox(
                        width: double.infinity,
                        child: Center(child: const Text('Guardar'))),
                    onPressed: () {
                      // MINIMIZAR EL TECHADO
                      FocusScope.of(context).requestFocus(FocusNode());

                      // validar si el formulario es valido
                      // primer !, negar la condicion
                      // segundo !, siempre va recibir un valor
                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                      // todo: imprimir valores del formulario
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
