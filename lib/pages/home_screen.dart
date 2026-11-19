// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:builiq/widgets/brand_card.dart';
import 'package:builiq/widgets/heading.dart';
import 'package:builiq/widgets/offer_card.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Color(0xffFFCB14),
            child: Text('A'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Guest',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Office -402, Royal Crest Apartments, 80 Ft Rd, Koraman...   ',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
        children: [
          Container(
            width: double.infinity,
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(14),
              color: Colors.white,
            ),
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'Search materials, services, brands & properties...',
              style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Brand of the day",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 12),
          BrandCard(),
          const SizedBox(height: 22),
          Heading(
            title: 'Featured Construction Service',
            subtitle: 'Find contractors  & professionals',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TypeCard(title: 'Firm'),
              TypeCard(title: 'Contractor'),
              TypeCard(title: 'Builder'),
            ],
          ),
          const SizedBox(height: 22),
          Heading(
            title: 'Popular Materials & Products',
            subtitle: 'Explore popular construction products',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TypeCard(title: 'Cement'),
              TypeCard(title: 'Steel'),
              TypeCard(title: 'Brick'),
            ],
          ),

          const SizedBox(height: 22),
          Heading(
            title: 'Featured Real Estate',
            subtitle: 'Discover land, plots and properties',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TypeCard(title: 'Agent'),
              TypeCard(title: 'Broker'),
              TypeCard(title: 'Valuer'),
            ],
          ),

          const SizedBox(height: 22),
          Text(
            "Today's Offers",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 6),
          OfferCard(),

          const SizedBox(height: 22),
          Heading(
            title: 'New Arrivals',
            subtitle: 'Discover the latest listings ',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TypeCard(title: 'Admixtures'),
              TypeCard(title: 'Surveyor'),
              TypeCard(title: 'Soil'),
            ],
          ),
          const SizedBox(height: 22),
          Heading(
            title: 'Near by Business',
            subtitle: 'Explore business around your location',
            onTap: () {},
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TypeCard(title: 'Adhesives'),
              TypeCard(title: 'Adhesives'),
              TypeCard(title: 'Legal Consultant'),
            ],
          ),
          const SizedBox(height: 140),
        ],
      ),
    );
  }
}

class TypeCard extends StatelessWidget {
  final String title;
  const TypeCard({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: 110,
      padding: EdgeInsets.only(top: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Colors.grey.shade300),
              color: Colors.blueGrey.shade100,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            title,
            textAlign: TextAlign.center,
            maxLines: 2,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
