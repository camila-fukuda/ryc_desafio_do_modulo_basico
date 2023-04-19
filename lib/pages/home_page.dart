import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/pages/dashboard_page.dart';
import 'package:ryc_desafio_do_modulo_basico/pages/rewards_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _DashboardState();
}

class _DashboardState extends State<HomePage> {
  int _selectedScreenIndex = 0;

  List<Map<String, Object>>? _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      {'title': 'Home Page', 'screen': const DashboardPage()},
      {'title': 'Rewards', 'screen': const RewardsPage()},
    ];
  }

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Desafio'),
      ),
      body: _screens![_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).colorScheme.secondary,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        currentIndex: _selectedScreenIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home Page',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Rewards',
          ),
        ],
      ),
    );
  }
}
