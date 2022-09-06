import 'package:flutter/material.dart';

class HistoryTile extends StatelessWidget {
  final int aiAmount, playerAmount;
  final String winner;
  const HistoryTile({Key? key, required this.aiAmount, required this.playerAmount, required this.winner}) : super(key: key);
static const style = TextStyle(fontSize: 15);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('AI Amount: $aiAmount', style: style,),
              const SizedBox(width: 15,),
              Text('Player Amount: $playerAmount', style: style,),
              const SizedBox(width: 15,),
              Text('Winner: $winner', style: style,)
            ],
          ),
        ),
      ),
    );
  }
}
