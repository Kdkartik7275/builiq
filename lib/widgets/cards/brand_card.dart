import 'package:flutter/material.dart';

class BrandCard extends StatelessWidget {
  final String? imagePath;

  const BrandCard({
    super.key,
    this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final scale = (width / 390).clamp(0.85, 1.15);

    return Container(
      height: 90 * scale,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14 * scale),
        color: const Color(0xffEAF1F7),
      ),
      clipBehavior: Clip.antiAlias,
      child: Row(
        children: [
          SizedBox(
            width: width * 0.35,
            child: imagePath != null
                ? Image.asset(
                    imagePath!,
                    fit: BoxFit.cover,
                  )
                : const ColoredBox(
                    color: Color(0xffDCE6EF),
                  ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8 * scale),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Brand Name',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16 * scale,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 4 * scale),
                  Text(
                    'Tagline',
                    style: TextStyle(
                      color: const Color(0xff29394D),
                      fontSize: 12 * scale,
                    ),
                  ),
                  SizedBox(height: 5 * scale),
                  Row(
                    children: [
                      Text(
                        'Explore Brand',
                        style: TextStyle(
                          color: const Color(0xff2263A5),
                          fontSize: 10 * scale,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: const Color(0xff2263A5),
                        size: 12 * scale,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}