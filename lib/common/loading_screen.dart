// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'package:builiq/bottom_nav.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 2), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNav()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
          child: Shimmer.fromColors(
            baseColor: const Color(0xffE9EEF4),
            highlightColor: const Color(0xffF8FAFC),
            period: const Duration(milliseconds: 1500),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 22,
                      backgroundColor: Color(0xffE9EEF4),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        color: const Color(0xffE9EEF4),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 12),

                const LoaderBar(height: 40, radius: 22),

                const SizedBox(height: 16),

                const LoaderBar(height: 50, radius: 16),

                const SizedBox(height: 18),

                const RowLoaders(height: 90),

                const SizedBox(height: 18),

                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffE9EEF4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),

                const SizedBox(height: 18),

                const RowLoaders(height: 120),

                const SizedBox(height: 18),

                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffE9EEF4),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),

                const SizedBox(height: 18),

                const RowLoaders(height: 120),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoaderBar extends StatelessWidget {
  const LoaderBar({
    super.key,
    required this.height,
    required this.radius,
  });

  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffE9EEF4),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}

class RowLoaders extends StatelessWidget {
  const RowLoaders({
    super.key,
    required this.height,
  });

  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}