import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded funButton({Color color, int soundNumber, String text}) {
    return Expanded(
      child: FlatButton(
        color: color,
        textColor: Colors.white,
        focusColor: Colors.brown,
        padding: EdgeInsets.all(18.0),
        onPressed: () {
          playsound(soundNumber);
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 20.0),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              funButton(
                  color: Colors.red,
                  soundNumber: 1,
                  text: "My name is Tatlikus"),
              funButton(color: Colors.amber, soundNumber: 2, text: 'Merhaba!'),
              funButton(color: Colors.yellow, soundNumber: 3, text: 'nomissiz'),
              funButton(color: Colors.teal, soundNumber: 4, text: 'fitci'),
              funButton(color: Colors.green, soundNumber: 5, text: 'huehuehe'),
              funButton(
                  color: Colors.black, soundNumber: 6, text: 'who are you?'),
              funButton(color: Colors.brown, soundNumber: 7, text: 'Grid>flex'),
            ],
          ),
        ),
      ),
    );
  }
}
