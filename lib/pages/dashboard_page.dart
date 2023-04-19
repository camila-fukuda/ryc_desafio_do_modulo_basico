import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/components/dashboard.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _showForm = false;

  void _toggleForm() {
    setState(() {
      _showForm = !_showForm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _showForm
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Form Content.'),
                const SizedBox(height: 16),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _showForm = false;
                    });
                  },
                  icon: const Icon(Icons.arrow_back),
                ),
              ],
            )
          : Dashboard(_toggleForm),
    );
  }
}
