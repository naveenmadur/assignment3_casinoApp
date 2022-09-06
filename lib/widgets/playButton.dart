import 'package:flutter/material.dart';
import 'package:casino_app/provider/casino_class.dart';
import 'package:provider/provider.dart';
import 'package:casino_app/provider/history.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final casino = Provider.of<Casino>(context);
    int player = casino.playerAmount;
    int ai = casino.aiAmount;
    return TextButton(
        onPressed: () {
          casino.play(ai, player);
          var winner = Provider.of<Casino>(context, listen: false).winnerText();
          Provider.of<History>(context, listen:false)
              .addInList(ai, player, winner);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigoAccent[700],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: const Text(
            'Play',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ));
  }
}
