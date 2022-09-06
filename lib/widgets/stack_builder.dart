import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:casino_app/provider/casino_class.dart';
import 'package:casino_app/widgets/circle_avatar.dart';
import 'package:casino_app/constants.dart';

class BuildStack extends StatelessWidget {
  const BuildStack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var winner = Provider.of<Casino>(context).winnerText();
    final casino = Provider.of<Casino>(context);
    int player = casino.playerAmount;
    int ai = casino.aiAmount;
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      clipBehavior: Clip.none,
      children: [
        Positioned(
          child: Container(
            height: containerHeight,
            width: containerWidth,
            decoration: stackBuilderBoxDecoration,
            child:  Center(
              child:  Text(
                winner,
                textAlign: TextAlign.center,
                style: containerTextStyle,
              ),
            ),
          ),
        ),
        topCircleAvatarWidget,
        bottomCircleAvatarWidget,
        Positioned(
          top: -20,
          left: -30,
          child: Text('   AI \n\$$ai', style: amountTextStyle,),
        ),
        Positioned(
          bottom: -30,
          right: -30,
          child: Text('Player\n\$$player',style: amountTextStyle,),
        ),
      ],
    );
  }
}
