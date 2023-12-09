import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kidsland/model/storie_model.dart';

class StoryDetails extends StatefulWidget {
  StoryDetails({Key? key, required this.storyforkids,}) : super(key: key);

  final StoryModel storyforkids;

  @override
  _StoryDetailsState createState() => _StoryDetailsState();
}

class _StoryDetailsState extends State<StoryDetails> {
  final audioplayer = AudioPlayer();
  bool isPlaying = false;

  String? audio;

  @override
  void initState() {
    super.initState();
    audio = widget.storyforkids.audioFile;

    audioplayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
  }

  @override
  void dispose() {
    audioplayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(File(widget.storyforkids.storyUrl)),
                ),
              ),
            ),
            Center(
              child: Text(
                widget.storyforkids.words,
                style: TextStyle(fontSize: 40),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 35,
              child: IconButton(
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
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
    );
  }
}
