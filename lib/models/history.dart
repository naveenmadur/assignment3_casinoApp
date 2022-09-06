import 'package:casino_app/models/casino_history.dart';
import 'package:flutter/cupertino.dart';

class History extends ChangeNotifier{
List<CasinoHistory> history = [];

void addInList(aiAmount, playerAmount, winner){
  history.add(CasinoHistory(aiAmount: aiAmount, playerAmount: playerAmount, winner: winner));
  notifyListeners();
}

}
