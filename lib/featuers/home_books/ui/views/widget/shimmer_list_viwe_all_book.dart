import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
class ShimmerListViweBook extends StatelessWidget {
  const ShimmerListViweBook({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 100,
        height: 224,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
            baseColor: Colors.grey[300]!,
            highlightColor: Colors.grey[100]!,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 150,
              height: 224,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(40),
              ),
            ),
          );
        },
      ),
    );
  }
}
