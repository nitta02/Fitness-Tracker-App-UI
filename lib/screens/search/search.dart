import 'package:fitness_tracker_ui/core/utils/itemsData.dart';
import 'package:fitness_tracker_ui/core/widgets/searchContainer.dart';
import 'package:flutter/material.dart';

class DocumentScreen extends StatelessWidget {
  const DocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 15,
          right: 15,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: searchCategory.length,
                itemBuilder: (context, index) {
                  String name = searchCategory.keys.elementAt(index);
                  String imagee = searchCategory[name]!['image'];
                  String week = searchCategory[name]!['week'];

                  return SearchContainer(
                    image: imagee,
                    week: week,
                    seacrhnamel: name,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
