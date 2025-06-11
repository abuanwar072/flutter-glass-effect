import 'package:flutter/cupertino.dart' show CupertinoIcons;
import 'package:flutter/material.dart';

class MediaPlayer extends StatelessWidget {
  const MediaPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 32),
              Column(
                children: [
                  Text(
                    "Seagulas",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Butcher Brown",
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.waveform,
                  size: 32,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            spacing: 8,
            children: [
              Text(
                "1.05",
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: 8,
                  decoration: BoxDecoration(
                    color: Colors.white54,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: 120,
                      height: 8,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                "2.38",
                style: TextStyle(fontSize: 12, color: Colors.white70),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.backward_fill,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.pause_fill,
                  size: 40,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  CupertinoIcons.forward_fill,
                  size: 40,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
