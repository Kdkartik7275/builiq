// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

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
    if (!context.mounted) return;
    Future.delayed(
      Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BottomNav()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 12),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(radius: 22, backgroundColor: Color(0xffE9EEF4)),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Color(0xffE9EEF4)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              LoaderBar(height: 40, radius: 22),
              const SizedBox(height: 16),
              LoaderBar(height: 50, radius: 16),

              const SizedBox(height: 18),

              RowLoaders(height: 90),
              const SizedBox(height: 18),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE9EEF4),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(height: 18),
              RowLoaders(height: 120),
              const SizedBox(height: 18),
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffE9EEF4),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              const SizedBox(height: 18),
              RowLoaders(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}

class LoaderBar extends StatelessWidget {
  const LoaderBar({Key? key, required this.height, required this.radius})
    : super(key: key);
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffE9EEF4),
        borderRadius: BorderRadius.circular(radius),
      ),
    );
  }
}

class RowLoaders extends StatelessWidget {
  const RowLoaders({Key? key, required this.height}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ],
    );
  }
}
