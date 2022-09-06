import 'package:flutter/cupertino.dart';
import 'package:multiple_random_choice/multiple_random_choice.dart';

// enum Winner { player, ai }

class Casino extends ChangeNotifier {
  int aiAmount = 1000, playerAmount = 1000;
  String aiString = 'AI Won!', playerString = 'Player Won!';
  double playerProbability = 0.6;
  bool? winner;
  final players = {
    'AI' : 2/5,
    'Player' : 3/5,
  };

  void play(ai, player) {
    if (ai >= 100 && player >= 100) {
      aiAmount -= 100;
      playerAmount -= 100;
      calculateWinner();
      notifyListeners();
    }
  }

  void calculateWinner() {
    final s = randomMultipleWeightedChoice(players, 1, null);
    // print(s);
    // print(players.keys.elementAt(1));
    if(s.first == players.keys.elementAt(1)){
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
