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
        color: Color(0xffEAF1F7),
      ),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Special Deals',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Offers across materials, services and real estate.",
                  style: TextStyle(fontSize: 14),
                  maxLines: 2,
                ),
              ),
              Icon(Icons.shopping_cart_outlined),
            ],
          ),
          const SizedBox(height: 4),
          Row(
            children: [
              Text(
                'Explore offers',
                style: TextStyle(fontSize: 11, color: Colors.blue),
              ),
              const SizedBox(width: 2),
              Icon(Icons.arrow_forward, color: Colors.blue, size: 15),
            ],
          ),
        ],
      ),
    );
  }
}
