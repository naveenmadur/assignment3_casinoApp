import 'package:flutter/material.dart';
import 'package:casino_app/widgets/history_tile.dart';
import 'package:provider/provider.dart';
import 'package:casino_app/provider/history.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var history = Provider.of<History>(context);
    return ListView.builder(
      itemBuilder: (context, index) => HistoryTile(
        aiAmount: history.history[index].aiAmount,
        playerAmount: history.history[index].playerAmount,
        winner: history.history[index].winner,
      ),
      itemCount: history.history.length,
    );
  }
}
