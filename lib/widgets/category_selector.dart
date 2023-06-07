import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedindex = 0;
  final List<String> categories = ['Message', 'Online', 'Group', 'Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Colors.blue,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedindex = index;
                });
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 26),
                child: Text(
                  categories[index],
                  style: TextStyle(
                      fontSize: 20,
                      color: index == selectedindex
                          ? Colors.white
                          : Colors.white60,
                      letterSpacing: 1.2),
                ),
              ),
            );
          }),
    );
  }
}
