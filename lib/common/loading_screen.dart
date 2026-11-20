// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:builiq/constant/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

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

      Navigator.pushReplacementNamed(context, AppRoutes.main);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final scale = (constraints.maxWidth / 390).clamp(0.85, 1.0);

            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 14 * scale,
                vertical: 12 * scale,
              ),
              child: Shimmer.fromColors(
                baseColor: const Color(0xffE9EEF4),
                highlightColor: const Color(0xffF8FAFC),
                period: const Duration(milliseconds: 1500),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 22 * scale,
                            backgroundColor: const Color(0xffE9EEF4),
                          ),
                          SizedBox(width: 12 * scale),
                          Expanded(
                            child: Container(
                              height: 40 * scale,
                              width: double.infinity,
                              color: const Color(0xffE9EEF4),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 12 * scale),

                      LoaderBar(height: 40 * scale, radius: 22 * scale),

                      SizedBox(height: 16 * scale),

                      LoaderBar(height: 50 * scale, radius: 16 * scale),

                      SizedBox(height: 18 * scale),

                      RowLoaders(height: 90 * scale),

                      SizedBox(height: 18 * scale),

                      Container(
                        height: 80 * scale,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffE9EEF4),
                          borderRadius: BorderRadius.circular(16 * scale),
                        ),
                      ),

                      SizedBox(height: 18 * scale),

                      RowLoaders(height: 120 * scale),

                      SizedBox(height: 18 * scale),

                      Container(
                        height: 80 * scale,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0xffE9EEF4),
                          borderRadius: BorderRadius.circular(16 * scale),
                        ),
                      ),

                      SizedBox(height: 18 * scale),

                      RowLoaders(height: 120 * scale),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class LoaderBar extends StatelessWidget {
  const LoaderBar({super.key, required this.height, required this.radius});

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
  const RowLoaders({super.key, required this.height});

  final double height;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final scale = (width / 390).clamp(0.85, 1.0);
    final gap = 12 * scale;

    return Row(
      children: [
        Expanded(
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16 * scale),
            ),
          ),
        ),
        SizedBox(width: gap),
        Expanded(
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16 * scale),
            ),
          ),
        ),
        SizedBox(width: gap),
        Expanded(
          child: Container(
            height: height,
            decoration: BoxDecoration(
              color: const Color(0xffE9EEF4),
              borderRadius: BorderRadius.circular(16 * scale),
            ),
          ),
        ),
      ],
    );
  }
}
