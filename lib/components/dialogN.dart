import 'package:flutter/material.dart';
import 'package:primerprojecte2025/components/botodialog.dart';

class DialogN extends StatelessWidget {
  final TextEditingController tectexttasca;
  final Function()? accioGuardar;
  final Function()? accioCancelar;



  const DialogN({super.key,
  required this.tectexttasca,
  required this.accioGuardar,
  required this.accioCancelar,

  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextField(
              controller: tectexttasca,
              cursorColor: Colors.orange[700],
              decoration: InputDecoration(hintText: "Escriu la tasaca...",
              border: OutlineInputBorder(),
              filled: true,
              fillColor: Colors.teal[400],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Botodialog(textboto: "Guardar", accioboto: accioGuardar ), //boto guardar
                Botodialog(textboto: "Cancelar", accioboto: accioCancelar ), //boto cancelar
            ],
            ),
          ],
        ),
      ),
    );
  }
}