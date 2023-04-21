import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward_list.dart';
import 'package:ryc_desafio_do_modulo_basico/models/task_list.dart';
import 'package:ryc_desafio_do_modulo_basico/pages/home_page.dart';
import 'package:ryc_desafio_do_modulo_basico/pages/rewards_page.dart';
import 'package:ryc_desafio_do_modulo_basico/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TaskList(),
        ),
        ChangeNotifierProvider(create: (_) => RewardList()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color.fromRGBO(81, 26, 126, 1),
          secondary: const Color.fromRGBO(70, 129, 137, 1),
          tertiary: const Color.fromARGB(255, 98, 161, 82),
          error: const Color.fromARGB(255, 150, 1, 1),
        )),
        routes: {
          AppRoutes.HOME: (ctx) => const HomePage(),
          AppRoutes.REWARDS: (ctx) => const RewardsPage()
        },
      ),
    );
  }
}
