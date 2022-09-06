import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:casino_app/provider/casino_class.dart';
import 'package:casino_app/widgets/playButton.dart';
import 'package:casino_app/widgets/stack_builder.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
             BuildStack(),
            PlayButton(),
          ],
        ),
      ),
    );
  }
}
