import 'package:builiq/constant/app_icons.dart';
import 'package:builiq/widgets/navigation/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:builiq/screens/home/home_screen.dart';

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
      extendBody: true,
      body: HomeScreen(),
      bottomNavigationBar: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  height: 64,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: const Color(0xffF3F6FA),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Row(
                    children: [
                      Expanded(
                        child: NavItem(
                          icon: AppIcons.home,
                          title: 'Home',
                          index: 0,
                          selectedIndex: selectedIndex,
                          onTap: () => setState(() => selectedIndex = 0),
                        ),
                      ),
                      Expanded(
                        child: NavItem(
                          icon: AppIcons.explore,
                          title: 'Explore',
                          index: 1,
                          selectedIndex: selectedIndex,
                          onTap: () => setState(() => selectedIndex = 1),
                        ),
                      ),
                      Expanded(
                        child: NavItem(
                          icon: AppIcons.calculate,
                          title: 'Calculate',
                          index: 2,
                          selectedIndex: selectedIndex,
                          onTap: () => setState(() => selectedIndex = 2),
                        ),
                      ),
                      Expanded(
                        child: NavItem(
                          icon:AppIcons.chat,
                          title: 'Chat',
                          index: 3,
                          selectedIndex: selectedIndex,
                          onTap: () => setState(() => selectedIndex = 3),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Container(
                height: 56,
                width: 56,
                decoration: BoxDecoration(
                  color: const Color(0xffF3F6FA),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: NavItem(
                  icon: AppIcons.gallery,
                  index: 4,
                  selectedIndex: selectedIndex,
                  onTap: () => setState(() => selectedIndex = 4),
                 
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
