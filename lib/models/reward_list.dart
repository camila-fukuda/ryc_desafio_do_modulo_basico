import 'package:flutter/material.dart';
import 'package:ryc_desafio_do_modulo_basico/data/dummy_data.dart';
import 'package:ryc_desafio_do_modulo_basico/models/reward.dart';

class RewardList with ChangeNotifier {
  final List<Reward> _rewardsList = dummyRewards;

  List<Reward> get rewardList => [..._rewardsList];
}
