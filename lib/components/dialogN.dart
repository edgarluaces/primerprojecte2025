import 'package:flutter/material.dart';
import 'package:primerprojecte2025/components/botodialog.dart';

class DialogN extends StatelessWidget {
  const DialogN({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.teal[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
      ),
      content: Container(
        height: 200,
        child: Column(
          children: [
            const TextField(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Botodialog(textboto: "Guardar", accioboto: () {} ), //boto guardar
                Botodialog(textboto: "Cancelar", accioboto: () {} ), //boto cancelar
            ],
            ),
          ],
        ),
      ),
    );
  }
}