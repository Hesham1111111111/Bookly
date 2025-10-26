import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BookItemShimmer extends StatelessWidget {
  const BookItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              width: 100.w,
              height: 150.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ShimmerItem(width: double.infinity, height: 20.h),
                SizedBox(height: 10.h),
                ShimmerItem(width: double.infinity, height: 40.h),
                SizedBox(height: 10.h),
                ShimmerItem(width: 120.w, height: 15.h),
                SizedBox(height: 10.h),
                ShimmerItem(width: 80.w, height: 15.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShimmerItem extends StatelessWidget {
  final double width;
  final double height;

  const ShimmerItem({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}
