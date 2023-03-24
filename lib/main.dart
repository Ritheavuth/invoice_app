import 'package:flutter/material.dart';
import 'screens/inventory_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/order_screen.dart';
import 'screens/table_screen.dart';
import 'screens/takeout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // initialize the database
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'មីហិល'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const TableScreen(),
    const TakeoutScreen(),
    const OrderScreen(),
    const MenuScreen(),
    const InventoryScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color.fromRGBO(229, 129, 35, 1),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        items: const [
          BottomNavigationBarItem(
            label: 'Tables',
            icon: Icon(Icons.table_restaurant_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Takeout',
            icon: Icon(Icons.takeout_dining_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Orders',
            icon: Icon(Icons.receipt_long_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu_book_rounded),
          ),
          BottomNavigationBarItem(
            label: 'Inventory',
            icon: Icon(Icons.warehouse_rounded),
          ),
        ],
      ),
    );
  }
}
