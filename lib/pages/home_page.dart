import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/components/status_app_bar.dart';
import 'package:ryc_desafio_do_modulo_basico/pages/dashboard_page.dart';
import 'package:ryc_desafio_do_modulo_basico/pages/rewards_page.dart';
import 'package:ryc_desafio_do_modulo_basico/utils/app_routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

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
    if (index == 0) {
      Navigator.of(context).pushReplacementNamed(AppRoutes.HOME);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(140),
        child: StatusAppBar(),
      ),
      body: _screens![_selectedScreenIndex]['screen'] as Widget,
      bottomNavigationBar: SizedBox(
        height: 80,
        child: BottomNavigationBar(
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
      ),
    );
  }
}
