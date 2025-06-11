import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wwdc25/glass_screen.dart';

class MusicGlassScreen extends StatelessWidget {
  const MusicGlassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/Preview.png",
            fit: BoxFit.fill,
            height: double.infinity,
          ),
          // Row(children: [GlassWidget(child: Icon(CupertinoIcons.forward))]),
        ],
      ),
    );
  }
}
