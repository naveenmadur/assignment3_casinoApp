import 'package:flutter/material.dart';
import 'widgets/circle_avatar.dart';

//Circle Avatar
const Color outerCircleAvatarColor = Colors.black;
const Color innerCircleAvatarColor = Colors.white;
const double outerCircleAvatarRadius = 40.0;
const double innerCircleAvatarRadius = 39.0;

//HistoryScreen
const SizedBox sizedBox = SizedBox(width: 15);
const TextStyle historyTextStyle = TextStyle(fontSize: 15);
const EdgeInsetsGeometry historyPadding = EdgeInsets.all(18);

//PlayButton
BoxDecoration playButtonBoxDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(10),
  color: Colors.indigoAccent[700],
);
const EdgeInsetsGeometry playButtonPadding = EdgeInsets.symmetric(horizontal: 30, vertical: 10);
const Text playButtonText = Text('Play', style: TextStyle(color: Colors.white, fontSize: 20));

//StackBuilder
const double containerHeight = 400;
const double containerWidth = 250;
BoxDecoration stackBuilderBoxDecoration = BoxDecoration(borderRadius: BorderRadius.circular(200), color: const Color(0xFFb0b9de));
const TextStyle containerTextStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold);
const Positioned topCircleAvatarWidget = Positioned(top: -30, child: CircleAvatarWidget());
const Positioned bottomCircleAvatarWidget = Positioned(bottom: -30, child: CircleAvatarWidget());
const TextStyle amountTextStyle = TextStyle(fontSize: 20);

//MainScreen
const BottomNavigationBarItem play = BottomNavigationBarItem(icon: Icon(Icons.square_rounded, size: 35,), label: 'Play',);
const BottomNavigationBarItem history = BottomNavigationBarItem(icon: Icon(Icons.square_rounded, size: 35,), label: 'History',);

