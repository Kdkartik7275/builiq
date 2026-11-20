import 'package:builiq/constant/app_images.dart';
import 'package:flutter/material.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color(0xffEAF1F7),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Special Deals',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Expanded(
            child: Row(
              children: [
                const Expanded(
                  child: Text(
                    'Offers across materials, services and real estate.',
                    style: TextStyle(fontSize: 14),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(width: 8),
                Image.asset(
                  AppImages.cart,
                  width: 42,
                  height: 42,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
          Row(
            children: [
              const Text(
                'Explore offers',
                style: TextStyle(fontSize: 11, color: Colors.blue),
              ),
              const SizedBox(width: 2),
              const Icon(Icons.arrow_forward, color: Colors.blue, size: 15),
            ],
          ),
        ],
      ),
    );
  }
}
