import 'package:flutter/material.dart';

class CircleAvatarWidget extends StatelessWidget {
  const CircleAvatarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.black,
      radius: 40,
      child: CircleAvatar(
        backgroundColor: Colors.white,
        radius: 39,
      ),
    );
  }
}

