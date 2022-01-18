import 'package:flutter/material.dart';
//import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
// In the lesson this is something with audiod_cache.dart, but appearantly not anymore :
// https://github.com/bluefireteam/audioplayers/blob/main/packages/audioplayers/doc/audio_cache.md

// For those of us with an Apple mac m1 :
// https://stackoverflow.com/questions/69055694/cocoapod-error-tried-to-install-all-the-possible-way-on-m1

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
      print('playSound is activated and soundNumber = $soundNumber');
      final player = AudioCache();
      print('Going to play sound');
      if (soundNumber>=1 && soundNumber<=7){
      player.play('note$soundNumber.wav');
    } else {
      print('error:');
      print('soundNumber = $soundNumber');
      print('Which is out of the range 1 till 7');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Press a button to play a sound'),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.grey.shade900,
            child: Column( // The colors : red, orange, yellow, green, darkgreen, blue, purple
              children: [
                Expanded(
                  child: TextButton(onPressed: (){playSound(1);},child: Container(color: Colors.red,)),
                ),
                Expanded(
                  child: TextButton(onPressed: (){playSound(2);},child: Container(color: Colors.orange,)),
                ),
                Expanded(
                  child: TextButton(onPressed: (){playSound(3);},child: Container(color: Colors.yellow,)),
                ),
                Expanded(
                  child: TextButton(onPressed: (){playSound(4);},child: Container(color: Colors.green.shade300,)),
                ),
                Expanded(
                  child: TextButton(onPressed: (){playSound(5);},child: Container(color: Colors.green.shade800,)),
                ),
                Expanded(
                  child: TextButton(onPressed: (){playSound(6);},child: Container(color: Colors.blue,)),
                ),
                Expanded(
                  child: TextButton(onPressed: (){playSound(7);},child: Container(color: Colors.purple,)),
                ),
              ],
            )
          ),
        ),
      ),
    );
  }
}
