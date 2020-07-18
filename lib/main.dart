import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int sound) {
    final player = AudioCache();
    player.play('note$sound.wav');
  }

  Expanded buildKey(int soundNumber, Color color) {
    //final player = AudioCache();
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
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
              buildKey(1, Colors.red),
              buildKey(2, Colors.blue),
              buildKey(3, Colors.yellow),
              buildKey(4, Colors.green),
              buildKey(5, Colors.brown),
              buildKey(6, Colors.blueGrey),
              buildKey(7, Colors.deepOrangeAccent),
            ],
          ),
        ),
      ),
    );
  }
}
