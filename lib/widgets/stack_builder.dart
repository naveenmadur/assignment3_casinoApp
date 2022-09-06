import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:casino_app/models/casino_class.dart';
import 'package:casino_app/models/history.dart';
import 'package:casino_app/widgets/circle_avatar.dart';

class BuildStack extends StatelessWidget {
  final int ai, player;
  const BuildStack({Key? key,required this.ai,required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var winner = Provider.of<Casino>(context).winnerText();
    Provider.of<History>(context).addInList(ai, player, winner);
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            height: 400,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: const Color(0xFFb0b9de),
            ),
            child:  Center(
              child:  Text(
                winner,
                textAlign: TextAlign.center,
                style:
                const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        const Positioned(
          top: -30,
          child: CircleAvatarWidget(),
        ),
        const Positioned(
          bottom: -30,
          child: CircleAvatarWidget(),
        ),
        Positioned(
          top: -20,
          left: -30,
          child: Text('   AI \n\$$ai', style: const TextStyle(fontSize: 20),),
        ),
        Positioned(
          bottom: -30,
          right: -30,
          child: Text('Player\n\$$player',style: const TextStyle(fontSize: 20),),
        ),
      ],
    );
  }
}
