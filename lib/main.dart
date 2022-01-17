import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';
// In the lesson this is something with audiod_cache.dart, but appearantly not anymore :
// https://github.com/bluefireteam/audioplayers/blob/main/packages/audioplayers/doc/audio_cache.md


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Center(
              child: TextButton(
                // In the lesson it's a Flatbutton, but that one is depricated.
                onPressed: (){
                  final player = AudioCache();
                  player.play('note1.wav');
                },
                child: Text('Click me'),

              ),
            ),
          ),
        ),
      ),
    );
  }
}
