// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:khmer_pos/data/models/table_model.dart';
import 'package:khmer_pos/widgets/forms/add_table_form.dart';
import 'package:khmer_pos/widgets/forms/take_order_form.dart';

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
    RestaurantTable(id: 4, tableNumber: 4),
    RestaurantTable(id: 5, tableNumber: 5),
    RestaurantTable(id: 6, tableNumber: 6),
    RestaurantTable(id: 7, tableNumber: 7),
    RestaurantTable(id: 8, tableNumber: 8),
    RestaurantTable(id: 9, tableNumber: 9),
    RestaurantTable(id: 10, tableNumber: 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: _tables.isEmpty
          ? Center(
              child: Text('No Tables'),
            )
          : GridView.builder(
            shrinkWrap: true,
            controller: ScrollController(),
            physics: ClampingScrollPhysics(),
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.08,
                  left: MediaQuery.of(context).size.width * 0.08,
                  top: MediaQuery.of(context).size.width * 0.05,
                  bottom: MediaQuery.of(context).size.width * 0.05),
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,childAspectRatio: 1.7, mainAxisSpacing: MediaQuery.of(context).size.width * 0.04, crossAxisSpacing: MediaQuery.of(context).size.width * 0.05),
              itemCount: _tables.length,
              itemBuilder: (context, index) {
                RestaurantTable table = _tables[index];
                return Container(
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.red),
                
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('តុលេខ ${table.tableNumber}', style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                      ),),
                      SizedBox(height: 20),
                      ElevatedButton(onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (context) {
                                          return TakeOrderForm();
                                        },
                                      );
                      }, style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Colors.white), ), child: Text('Take Order', style: TextStyle(color: Colors.red),),)
                    ],
                  ),
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
