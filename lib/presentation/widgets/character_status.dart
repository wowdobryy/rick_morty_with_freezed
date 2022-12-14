import 'package:flutter/material.dart';

enum LiveState { alive, dead, unknown }

class CharacterStatus extends StatelessWidget {
  final LiveState liveState;

  const CharacterStatus({Key? key, required this.liveState}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.circle,
          size: 9.0,
          color: liveState == LiveState.alive
              ? Colors.lightGreenAccent[200]
              : liveState == LiveState.dead
                  ? Colors.red
                  : Colors.white70,
        ),
        SizedBox(width: 6.0),
        Text(
          liveState == LiveState.dead
              ? 'Dead'
              : liveState == LiveState.alive
                  ? 'Alive'
                  : 'Unknown',
          style: Theme.of(context).textTheme.bodyText1,
        )
      ],
    );
  }
}
