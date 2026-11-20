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
          children: [
            Expanded(
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: onTap,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'View all',
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                  const SizedBox(width: 2),
                  const Icon(Icons.arrow_forward, color: Colors.blue, size: 15),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
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
