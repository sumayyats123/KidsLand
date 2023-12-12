import 'dart:io';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kidsland/model/storie_model.dart';

class StoryDetails extends StatefulWidget {
  StoryDetails({Key? key, required this.storyforkids}) : super(key: key);

  final StoryModel storyforkids;

  @override
  _StoryDetailsState createState() => _StoryDetailsState();
}

class _StoryDetailsState extends State<StoryDetails> {
  final audioplayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String? audio;

  @override
  void initState() {
    super.initState();
    audio = widget.storyforkids.audioFile;

audioplayer.onDurationChanged.listen((d) {
      setState(() {
        duration = d;
      });
    });



audioplayer.onPositionChanged.listen((p) {
  setState(() {
    position = p;
  });
 });

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

  String formatTime(Duration duration) {
    String minutes = (duration.inMinutes % 60).toString().padLeft(2, '0');
    String seconds = (duration.inSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.file(
                  File(widget.storyforkids.storyUrl), // Ensure this is not null
                  width: double.infinity,
                  height: 500,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 32),
              Center(
                child: Column(
                  children: [
                    Text(
                      widget.storyforkids.words,
                      style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                    ),
                    Slider(
                      min: 0,
                      max: duration.inMilliseconds.toDouble(),
                      value: position.inMilliseconds.toDouble(),
                      onChanged: (value) async {
                        await audioplayer.seek(Duration(milliseconds: value.toInt()));
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(formatTime(position)),
                          Text(formatTime(duration - position)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
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
      ),
    );
  }
}

