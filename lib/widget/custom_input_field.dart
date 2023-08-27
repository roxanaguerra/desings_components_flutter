import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputField({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // autofocus: true,
      initialValue: '',
      //despues del espacio cada palabra empieza con mayuscula
      textCapitalization: TextCapitalization.words,
      // El tipo de dato q se ingresara en el input
      keyboardType: keyboardType,
      obscureText: obscureText,
      onChanged: (value) {
        // print('value: $value');
        formValues[formProperty] = value;
      },
      validator: (value) {
        if (value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Minimo de 3 caracteres' : null;
      },
      // se muestra el mensaje de la validacion, cuando interacciono con el input
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        // counterText: '3 caracteres',
        // prefixIcon: Icon(Icons.verified_user_outlined),
        // suffixIcon: Icon(Icons.group_outlined),
        suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
        // icon: Icon(Icons.assignment_ind_outlined),
        icon: icon == null ? null : Icon(icon),
        // border: OutlineInputBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomLeft: Radius.circular(10),
        //       topRight: Radius.circular(10)),
        // ),
      ),
    );
  }
}
