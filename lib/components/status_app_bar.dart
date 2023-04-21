import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryc_desafio_do_modulo_basico/models/user_info.dart';

class StatusAppBar extends StatelessWidget {
  const StatusAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final userInfo = Provider.of<UserInfo>(context);

    final int coins = userInfo.totalOfCoins;
    final int lives = userInfo.lives;

    return AppBar(
      toolbarHeight: 200,
      leadingWidth: 120,
      leading: const Icon(
        Icons.account_circle_rounded,
        size: 100,
      ),
      title: Column(
        children: [
          Row(
            children: List.generate(5, (index) {
              if (index < lives) {
                return const Icon(
                  Icons.favorite,
                  size: 50,
                  color: Color.fromRGBO(155, 0, 0, 1),
                );
              } else {
                return const Icon(
                  Icons.favorite,
                  size: 50,
                  color: Color.fromRGBO(155, 155, 155, 1),
                );
              }
            }),
          ),
          Row(children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 10, 0),
              child: Icon(
                Icons.castle,
                color: Color.fromRGBO(179, 131, 0, 1),
                size: 40,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5, 10, 10, 0),
              child: Text('$coins coins'),
            ),
          ]),
        ],
      ),
    );
  }
}
