import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kidsland/model/alphabets_model.dart';

class Alphabetdetails extends StatefulWidget {
  const Alphabetdetails({Key? key, required this.wordsforkids}) : super(key: key);

  final WordsForKids wordsforkids;

  @override
  _AlphabetdetailsState createState() => _AlphabetdetailsState();
}

class _AlphabetdetailsState extends State<Alphabetdetails> {
final audioplayer = AudioPlayer();
  bool isPlaying = false;

 String? audio;
 
  @override
  void initState() {
    super.initState();
    audio = widget.wordsforkids.audioFile;
    
    audioplayer.onPlayerStateChanged.listen((state) { setState(() {
      isPlaying = state == PlayerState.playing;
    });});
  }

  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
             gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color.fromARGB(255, 36, 228, 202),
                Color.fromARGB(255, 255, 148, 244),
              ]
             )
            ),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height:200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(File(widget.wordsforkids.imageUrl)),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    widget.wordsforkids.words,
                    style: const TextStyle(fontSize: 60,fontWeight: FontWeight.bold,color: Colors.red),
                  ),
                ),
                const SizedBox(height:60,), 
                Container(
                  width: double.infinity,
                  height:300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: FileImage(File(widget.wordsforkids.alphabets)),
                    ),
                  ),
                ),
                const SizedBox(
                  height:40,
                ),
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 35,
                  child: IconButton(
                    icon: Icon(
                     isPlaying ?Icons.pause : Icons.play_arrow
                    ),
                    iconSize: 50,
                    onPressed: () async {
                      if (isPlaying) {
                        await audioplayer.pause();
                      } else {
                        await audioplayer.play(DeviceFileSource(audio!));
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
