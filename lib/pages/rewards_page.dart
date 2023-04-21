import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ryc_desafio_do_modulo_basico/components/reward_item.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward_list.dart';
import 'package:ryc_desafio_do_modulo_basico/models/user_info.dart';

class RewardsPage extends StatelessWidget {
  const RewardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Reward> rewards = Provider.of<RewardList>(context).rewardList;
    final provider = Provider.of<UserInfo>(context);

    buyReward(Reward reward) {
      bool result = provider.buyReward(reward);

      if (!result) {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Not enough coins!'),
              content: const Text(
                  'You do not have enough coins to buy this reward.'),
              actions: <Widget>[
                ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
      }
    }

    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        itemCount: rewards.length,
        itemBuilder: (context, index) {
          return RewardItem(rewards[index], buyReward);
        },
      ),
    );
  }
}
