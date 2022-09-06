import 'package:flutter/material.dart';
import 'package:casino_app/constants.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: outerCircleAvatarColor,
      radius: outerCircleAvatarRadius,
      child: CircleAvatar(
        backgroundColor: innerCircleAvatarColor,
        radius: innerCircleAvatarRadius,
      ),
    );
  }
}

