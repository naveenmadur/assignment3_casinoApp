import 'package:flutter/material.dart';
import 'package:casino_app/provider/casino_class.dart';
import 'package:provider/provider.dart';
import 'package:casino_app/provider/history.dart';
import 'package:casino_app/constants.dart';

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
          decoration: playButtonBoxDecoration,
          padding: playButtonPadding,
          child: playButtonText,
        ));
  }
}
