import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:ryc_desafio_do_modulo_basico/components/reward_item.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward_list.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Reward> rewards = Provider.of<RewardList>(context).rewardList;

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemCount: rewards.length,
        itemBuilder: (context, index) {
          return RewardItem(rewards[0]);
        },
      ),
    );
  }
}
