import 'package:flutter/material.dart';

class SearchContainer extends StatelessWidget {
  final String image;
  final String week;
  final String seacrhnamel;
  const SearchContainer(
      {super.key,
      required this.image,
      required this.week,
      required this.seacrhnamel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      alignment: Alignment.bottomRight,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.only(
        right: 15,
        left: 15,
        top: 100,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                seacrhnamel,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              Text(
                week,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Container(
            height: 30,
            width: 80,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Center(
              child: Text('Edit'),
            ),
          ),
        ],
      ),
    );
  }
}
