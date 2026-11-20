import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavItem extends StatelessWidget {
  final String icon;
  final String? title;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;

  const NavItem({
    super.key,
    required this.icon,
    this.title,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: isSelected && title != null ? const Color(0xffDFEAF6) : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(icon, height: 25, width: 22),
            if (title != null) ...[
              const SizedBox(height: 3),
              Text(
                title!,
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff26384A),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
