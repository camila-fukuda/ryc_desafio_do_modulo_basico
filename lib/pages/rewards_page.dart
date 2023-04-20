import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: Card(
            color: const Color.fromARGB(255, 224, 161, 182),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 105, 63, 173),
                            Color.fromARGB(255, 221, 35, 128),
                          ],
                        ),
                        // color: Color.fromARGB(255, 94, 121, 95),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        size: 40,
                        FontAwesomeIcons.flask,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Healing Potion'),
                        Text('Restore 2 lives.')
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: IconButton(
                      iconSize: 40,
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Color.fromARGB(255, 29, 119, 192),
                      ),
                      onPressed: null,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
          child: Card(
            color: const Color.fromARGB(255, 224, 161, 182),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.only(right: 10),
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromARGB(255, 105, 63, 173),
                            Color.fromARGB(255, 221, 35, 128),
                          ],
                        ),
                        // color: Color.fromARGB(255, 94, 121, 95),
                      ),
                      alignment: Alignment.center,
                      child: const Icon(
                        size: 40,
                        FontAwesomeIcons.bandAid,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Bandage'),
                        Text('Restore 1 life.')
                      ],
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: IconButton(
                      iconSize: 40,
                      icon: Icon(
                        Icons.shopping_cart,
                        color: Color.fromARGB(255, 29, 119, 192),
                      ),
                      onPressed: null,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
