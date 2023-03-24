// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:khmer_pos/data/models/table_model.dart';
import 'package:khmer_pos/widgets/forms/add_table_form.dart';

class TableScreen extends StatefulWidget {
  const TableScreen({super.key});

  @override
  State<TableScreen> createState() => _TableScreenState();
}

class _TableScreenState extends State<TableScreen> {
  final List<RestaurantTable> _tables = [
    RestaurantTable(id: 1, tableNumber: 1),
    RestaurantTable(id: 2, tableNumber: 2),
    RestaurantTable(id: 3, tableNumber: 3),
    RestaurantTable(id: 5, tableNumber: 1),
    RestaurantTable(id: 6, tableNumber: 2),
    RestaurantTable(id: 7, tableNumber: 3)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tables.isEmpty
          ? Center(
              child: Text('No Tables'),
            )
          : GridView.builder(
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
              itemCount: _tables.length,
              itemBuilder: (context, index) {
                RestaurantTable table = _tables[index];
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(""),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AddTableForm();
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
