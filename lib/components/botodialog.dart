import 'package:flutter/material.dart';

class Botodialog extends StatelessWidget {

  final String textboto;
  final Function()? accioboto;

  const Botodialog({super.key,
  required this.textboto,
  required this.accioboto,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: accioboto,
      color: Colors.teal[200],
      child: Text(textboto),
    );
  }
}
