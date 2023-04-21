import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward.dart';

class RewardItem extends StatelessWidget {
  final Reward reward;
  const RewardItem(this.reward, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
      child: Card(
        color: const Color.fromARGB(255, 224, 161, 182),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
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
                  child: reward.icon),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        reward.name,
                        style: const TextStyle(
                            fontSize: 16,
                            letterSpacing: 2,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(reward.description)
                    ],
                  ),
                ),
              ),
              const IconButton(
                iconSize: 40,
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color.fromARGB(255, 29, 119, 192),
                ),
                onPressed: null,
              )
            ],
          ),
        ),
      ),
    );
    ;
  }
}
