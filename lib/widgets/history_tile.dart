import 'package:flutter/material.dart';
import 'package:casino_app/constants.dart';

class HistoryTile extends StatelessWidget {
  final int aiAmount, playerAmount;
  final String winner;
  const HistoryTile({Key? key, required this.aiAmount, required this.playerAmount, required this.winner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        child: Padding(
          padding: historyPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AI Amount: $aiAmount', style: historyTextStyle,),
              sizedBox,
              Text('Player Amount: $playerAmount', style: historyTextStyle,),
              sizedBox,
              Text('Winner: $winner', style: historyTextStyle,)
            ],
          ),
        ),
      ),
    );
  }
}
