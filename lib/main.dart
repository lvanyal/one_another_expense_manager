import 'package:copilot/dashboard/dashboard_screen.dart';
import 'package:copilot/sl/dependencies.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

void main() {
  //initialize LocalDataSource
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      theme: FlexThemeData.light(scheme: FlexScheme.pinkM3),
      darkTheme: FlexThemeData.dark(scheme: FlexScheme.pinkM3),
      home: const MyHomePage(title: 'Track your expenses'),
    );
  }
}

// The screen with bottom navigation bar with 3 pages: Home, Settings and About. And FAB button with plus icon in the bottom right corner.
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// The state of the screen with bottom navigation bar with 3 pages: Home, Settings and About. And FAB button with plus icon in the bottom right corner.
class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    Text('Settings Page'),
    Text('About Page'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // The screen with bottom navigation bar with 3 pages: Home, Settings and About. And FAB button with plus icon in the bottom right corner.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // The body of the screen with bottom navigation bar with 3 pages: Home, Settings and About. And FAB button with plus icon in the bottom right corner.
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // The bottom navigation bar with 3 pages: Home, Settings and About. And FAB button with plus icon in the bottom right corner.
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Expenses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
      // The FAB button with plus icon in the bottom right corner.
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
