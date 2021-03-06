import 'package:flutter/material.dart';

void main() => runApp(const MyApp());


class MyApp extends
StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// Это виджет с отслеживанием состояния, создаваемый основным приложением
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// Это частный класс State, который входит в MyStatefulWidget
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'API facebook',
      style: optionStyle,
    ),
    Text(
      'рассписание',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.white70,
        title: const Text(
          'ASPC mobile',
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Рассписание',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.backup_table_outlined),
            label: 'instagram',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors. red,
        onTap: _onItemTapped,
      ),
    );
  }
}
