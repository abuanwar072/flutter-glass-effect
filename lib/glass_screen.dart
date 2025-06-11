import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:wwdc25/components/media_player.dart';

class GlassScreen extends StatelessWidget {
  const GlassScreen({super.key});
  // Now only one this is missing, that is the blur effect

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/bg_1.jpg"),
          Positioned(
            left: 16,
            right: 16,
            bottom: 32,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(color: Colors.white24, width: 2),
                  ),
                  child: MediaPlayer(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
