import 'package:flutter/cupertino.dart';
import 'dart:math';

enum Winner { player, ai }

class Casino extends ChangeNotifier {
  int aiAmount = 1000, playerAmount = 1000;
  String aiString = 'AI Won!', playerString = 'Player Won!';
  double playerProbability = 0.6;
  bool? winner;

  void play(ai, player) {
    if (ai >= 100 && player >= 100) {
      aiAmount -= 100;
      playerAmount -= 100;
      calculateWinner();
      notifyListeners();
    }
  }

  void calculateWinner() {
    int x = Random().nextInt(2);
    if(Winner.values[x] == Winner.player){
      playerAmount += 200;
      winner = true;
    }
    else{
      aiAmount += 200;
      winner = false;
    }
  }

  String winnerText(){
    if(winner == true){
      return playerString;
    }
    else if(winner == null){
      return 'Start';
    }
    else{
      return aiString;
    }

  }

}
