import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  const Heading({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Row(
              children: [
                Text(
                  'View all',
                  style: TextStyle(fontSize: 12, color: Colors.blue),
                ),
                const SizedBox(width: 2),
                Icon(Icons.arrow_forward, color: Colors.blue, size: 15),
              ],
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          subtitle,
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.normal,
            color: Colors.grey.shade600,
          ),
        ),
      ],
    );
  }
}
