// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:builiq/pages/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
   int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      bottomSheet: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(
              child: Container(
                margin: EdgeInsets.fromLTRB(12, 0, 12, 12),
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color(0xffF3F6FA),
                ),
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    NavItem(
                      icon: Icons.home,
                      title: 'Home',
                      index: 0,
                      selectedIndex: selectedIndex,
                      onTap: () => setState(() {
                        selectedIndex = 0;
                      }),
                    ),
                    NavItem(
                      icon: Icons.bookmark_outline,
                      title: 'Explore',
                      index: 1,
                      selectedIndex: selectedIndex, onTap: () => setState(() {
                        selectedIndex = 1;
                      }),
                    ),
                    NavItem(
                      icon: Icons.ios_share_sharp,
                      title: 'Calculate',
                      index: 2,
                      selectedIndex: selectedIndex, onTap: () => setState(() {
                        selectedIndex = 2;
                      }),
                    ),
                    NavItem(
                      icon: Icons.chat_bubble_outline_rounded,
                      title: 'Chat',
                      index: 3,
                      selectedIndex: selectedIndex, onTap: () => setState(() {
                        selectedIndex = 3;
                      }),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 22, 12, 30),
              height: 80,
              width: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Color(0xffF3F6FA),
              ),
              child: NavItem(
                icon: Icons.photo_camera_back_outlined,
                index: 4,
                selectedIndex: selectedIndex, onTap: () => setState(() {
                        selectedIndex = 4;
                      }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final IconData icon;
  final String? title;
  final int index;
  final int selectedIndex;
  final VoidCallback onTap;

  const NavItem({
    Key? key,
    required this.icon,
    this.title,
    required this.index,
    required this.selectedIndex,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: 60,
      
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: index == selectedIndex ? Colors.blueGrey.shade200 : null,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 26),
            title != null
                ? Text(
                    title!,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                  )
                : const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
