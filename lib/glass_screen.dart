import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlassScreen extends StatelessWidget {
  const GlassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/bg_1.jpg",
            fit: BoxFit.fitHeight,
            height: double.infinity,
          ),
          Positioned(
            left: 16,
            right: 16,
            bottom: 32,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(8, 16),
                    blurRadius: 16,
                    color: Colors.black.withValues(alpha: 0.1),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 40, sigmaY: 40),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      border: Border.all(
                        color: Colors.white.withValues(alpha: 0.2),
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.all(20),
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
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
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
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.white70,
                              ),
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
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
