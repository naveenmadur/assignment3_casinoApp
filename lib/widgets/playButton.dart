import 'package:flutter/material.dart';
import 'package:casino_app/models/casino_class.dart';
import 'package:provider/provider.dart';

class PlayButton extends StatelessWidget {
  const PlayButton({
    Key? key,
    required this.ai,
    required this.player,
  }) : super(key: key);


  final int ai;
  final int player;

  @override
  Widget build(BuildContext context) {
    final casino = Provider.of<Casino>(context);
    return TextButton(
        onPressed: () {
          casino.play(ai, player);
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.indigoAccent[700],
          ),
          padding:
          const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: const Text(
            'Play',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ));
  }
}
