import 'package:flutter/material.dart';

class TakeOrderForm extends StatefulWidget {
  const TakeOrderForm({Key? key}) : super(key: key);

  @override
  State<TakeOrderForm> createState() => _TakeOrderFormState();
}

class _TakeOrderFormState extends State<TakeOrderForm> {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Menu'),
      content: SizedBox(height: MediaQuery.of(context).size.height * 0.5, width: MediaQuery.of(context).size.width * 0.75,),
      actions: [
        ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white)),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Complete'),
        ),
        ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.grey.shade600)),
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Save', style: TextStyle(color: Colors.white),),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Cancel', style: TextStyle(color: Colors.white),),
        ),
      ],
    );
  }
}
