import 'package:builiq/constant/app_images.dart';
import 'package:builiq/widgets/cards/brand_card.dart';
import 'package:builiq/widgets/cards/type_card.dart';
import 'package:builiq/widgets/headings/heading.dart';
import 'package:builiq/widgets/cards/offer_card.dart';
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
            backgroundColor: const Color(0xffFFCB14),
            child: const Text('A'),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Hello, Guest',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Text(
              'Office -402, Royal Crest Apartments, 80 Ft Rd, Koraman...',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final screenWidth = constraints.maxWidth;
          final horizontalPadding = screenWidth < 360 ? 10.0 : 12.0;
          final sectionSpacing = screenWidth < 360 ? 18.0 : 22.0;
          final cardSpacing = screenWidth < 360 ? 6.0 : 8.0;

          return ListView(
            padding: EdgeInsets.symmetric(
              horizontal: horizontalPadding,
              vertical: 14,
            ),
            children: [
              TextField(
                textInputAction: TextInputAction.search,
                style: const TextStyle(fontSize: 13, color: Color(0xFF1B2A41)),
                cursorColor: const Color(0xFF1B2A41),
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.white,
                  hintText:
                      'Search materials, services, brands & properties...',
                  hintMaxLines: 1,
                  hintStyle: TextStyle(
                    fontSize: 12.5,
                    color: Colors.blueGrey.shade200,
                    overflow: TextOverflow.ellipsis,
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    size: 20,
                    color: Colors.blueGrey.shade200,
                  ),
                  prefixIconConstraints: const BoxConstraints(
                    minWidth: 44,
                    minHeight: 40,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 13,
                    horizontal: 12,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(color: Color(0xFFDDE3EC)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Color(0xFF1F4E8C),
                      width: 1.2,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const Text(
                'Brand of the day',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 12),
              BrandCard(imagePath: AppImages.brandDay),
              SizedBox(height: sectionSpacing),
              Heading(
                title: 'Featured Construction Service',
                subtitle: 'Find contractors  & professionals',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildCardRow(
                spacing: cardSpacing,
                cards: [
                  TypeCard(title: 'Firm', imagePath: AppImages.firm),
                  TypeCard(
                    title: 'Contractor',
                    imagePath: AppImages.contractor,
                  ),
                  TypeCard(title: 'Builder', imagePath: AppImages.builder),
                ],
              ),
              SizedBox(height: sectionSpacing),
              Heading(
                title: 'Popular Materials & Products',
                subtitle: 'Explore popular construction products',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildCardRow(
                spacing: cardSpacing,
                cards: [
                  TypeCard(title: 'Cement', imagePath: AppImages.cement),
                  TypeCard(title: 'Steel', imagePath: AppImages.steel),
                  TypeCard(title: 'Brick', imagePath: AppImages.brick),
                ],
              ),
              SizedBox(height: sectionSpacing),
              Heading(
                title: 'Featured Real Estate',
                subtitle: 'Discover land, plots and properties',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildCardRow(
                spacing: cardSpacing,
                cards: [
                  TypeCard(title: 'Agent', imagePath: AppImages.agent),
                  TypeCard(title: 'Broker', imagePath: AppImages.broker),
                  TypeCard(title: 'Valuer', imagePath: AppImages.valuer),
                ],
              ),
              SizedBox(height: sectionSpacing),
              const Text(
                "Today's Offers",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 6),
              const OfferCard(),
              SizedBox(height: sectionSpacing),
              Heading(
                title: 'New Arrivals',
                subtitle: 'Discover the latest listings ',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildCardRow(
                spacing: cardSpacing,
                cards: [
                  TypeCard(
                    title: 'Admixtures',
                    imagePath: AppImages.admixtures,
                  ),
                  TypeCard(title: 'Surveyor', imagePath: AppImages.surveyor),
                  TypeCard(title: 'Soil', imagePath: AppImages.soil),
                ],
              ),
              SizedBox(height: sectionSpacing),
              Heading(
                title: 'Near by Business',
                subtitle: 'Explore business around your location',
                onTap: () {},
              ),
              const SizedBox(height: 12),
              _buildCardRow(
                spacing: cardSpacing,
                cards: [
                  TypeCard(title: 'Adhesives', imagePath: AppImages.adhesives),
                  TypeCard(title: 'Installer', imagePath: AppImages.installer),
                  TypeCard(
                    title: 'Legal Consultant',
                    imagePath: AppImages.legal,
                  ),
                ],
              ),
              const SizedBox(height: 140),
            ],
          );
        },
      ),
    );
  }

  Widget _buildCardRow({required double spacing, required List<Widget> cards}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        for (int i = 0; i < cards.length; i++) ...[
          Expanded(child: cards[i]),
          if (i != cards.length - 1) SizedBox(width: spacing),
        ],
      ],
    );
  }
}
