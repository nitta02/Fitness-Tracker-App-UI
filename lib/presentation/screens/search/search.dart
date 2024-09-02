// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:fitness_tracker_ui/core/utils/itemsData.dart';
import 'package:fitness_tracker_ui/presentation/widgets/searchContainer.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffff5f5f5), // Light grey background
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _headerSection(),
            const SizedBox(height: 20),
            _searchBar(),
            const SizedBox(height: 20),
            _documentList(),
          ],
        ),
      ),
    );
  }

  Widget _headerSection() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Search',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xff424242), // Dark grey
          ),
        ),
        Icon(IconlyLight.filter,
            color: Color(0xff48CFCB)), // Teal color for filter icon
      ],
    );
  }

  Widget _searchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintText: 'Search documents...',
          hintStyle: TextStyle(color: Color(0xff9e9e9e)), // Light grey
          border: InputBorder.none,
          icon:
              Icon(IconlyLight.search, color: Color(0xff9e9e9e)), // Light grey
        ),
      ),
    );
  }

  Widget _documentList() {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: searchCategory.length,
        itemBuilder: (context, index) {
          String name = searchCategory.keys.elementAt(index);
          String image = searchCategory[name]!['image'];
          String week = searchCategory[name]!['week'];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: SearchContainer(
              image: image,
              week: week,
              seacrhnamel: name,
            ),
          );
        },
      ),
    );
  }
}
