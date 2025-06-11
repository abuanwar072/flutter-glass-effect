import 'package:flutter/material.dart';
import 'package:wwdc25/components/media_player.dart';

class GlassScreen extends StatelessWidget {
  const GlassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.black),
          Positioned(left: 16, right: 16, bottom: 32, child: MediaPlayer()),
        ],
      ),
    );
  }
}
