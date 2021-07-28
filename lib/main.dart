import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  _XylophoneAppState createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({Color color , int soundNumbers}){
    return Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumbers);
                  },
                  style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 20),
                      backgroundColor:color),
                ),
              );
              

              
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             
             buildKey(color:Colors.red, soundNumbers: 1 ),
              buildKey(color:Colors.orange, soundNumbers: 2 ),
               buildKey(color:Colors.yellow, soundNumbers: 3 ),
                buildKey(color:Colors.green, soundNumbers: 4 ),
                 buildKey(color:Colors.teal[200], soundNumbers: 5 ),
                  buildKey(color:Colors.blue, soundNumbers: 6 ),
                   buildKey(color:Colors.purple, soundNumbers: 7 ),
              
            ],
          ),
        ),
      ),
    );
  }
}
