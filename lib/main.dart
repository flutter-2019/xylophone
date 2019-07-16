import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded soundButton(Color color, int i) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          final player = AudioCache();
          player.play('note$i.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              soundButton(Colors.red, 1),
              soundButton(Colors.yellow, 2),
              soundButton(Colors.orange, 3),
              soundButton(Colors.brown, 4),
              soundButton(Colors.blue, 5),
              soundButton(Colors.green, 6),
              soundButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}
