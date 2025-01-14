import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Itemtasca extends StatelessWidget {
  final String textTasca;
  final bool valorCheckbox;
  final Function(bool?)? canviaValorBox;
  final Function(BuildContext)? esborrarT;

  const Itemtasca({
    super.key,
    required this.textTasca,
    required this.valorCheckbox,
    required this.canviaValorBox,
    required this.esborrarT,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
      child: Slidable(
        endActionPane: ActionPane(
          motion: const StretchMotion(), 
          children: [
            SlidableAction(
              icon: Icons.delete,
              backgroundColor: Colors.red,
              borderRadius: BorderRadius.circular(10),
              onPressed: esborrarT,
              ),
          ],
          ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.teal[300],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                //checkbox
                Checkbox(
                  activeColor: Colors.teal[200],
                  checkColor: Colors.orange[200],
                  side: BorderSide(color: Colors.orange[200]!, width: 2),
                  value: valorCheckbox,
                  onChanged: canviaValorBox,
                ),
        
                //text
                Text( textTasca, style: TextStyle(
                  color: Colors.orange[200],
                  decoration: valorCheckbox? TextDecoration.lineThrough : TextDecoration.none, //if
                  decorationColor: Colors.orange[200],
                  decorationThickness: 3,
                ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
