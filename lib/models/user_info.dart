import 'package:flutter/material.dart';

class UserInfo with ChangeNotifier {
  static int maxLifes = 5;
  int totalOfCoins = 0;
  int lives = 5;
  String profilePicUrl = "lib/assets/cat-profile.jpg";

  void dead() {
    totalOfCoins = 0;

    notifyListeners();
  }

  void restoreLife(int numberToRestore) {
    lives = lives + numberToRestore > 5 ? 5 : lives + numberToRestore;

    notifyListeners();
  }

  void removeLife(int numberToRemove) {
    lives = lives - numberToRemove <= 0 ? 0 : lives - numberToRemove;

    notifyListeners();

    if (lives == 0) {
      dead();
    }
  }
}
