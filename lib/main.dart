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

  Expanded buildKey({Color color , int soundNumber}){
    return Expanded(
                child: TextButton(
                  onPressed: () {
                    playSound(soundNumber);
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
             
             buildKey(color:Colors.red, soundNumber: 1 ),
              buildKey(color:Colors.orange, soundNumber: 2 ),
               buildKey(color:Colors.yellow, soundNumber: 3 ),
                buildKey(color:Colors.green, soundNumber: 4 ),
                 buildKey(color:Colors.teal[200], soundNumber: 5 ),
                  buildKey(color:Colors.blue, soundNumber: 6 ),
                   buildKey(color:Colors.purple, soundNumber: 7 ),
              
            ],
          ),
        ),
      ),
    );
  }
}
