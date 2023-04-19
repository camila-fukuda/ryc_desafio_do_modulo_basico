import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  bool _showForm = false;

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
          : ElevatedButton(
              onPressed: () {
                setState(() {
                  _showForm = true;
                });
              },
              child: const Text('Add Task'),
            ),
    );
  }
}
