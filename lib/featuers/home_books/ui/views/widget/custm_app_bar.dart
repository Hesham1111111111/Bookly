import 'package:bookely/core/resources/images_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustmAppBar extends StatelessWidget {
  const CustmAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(AppImages.logo, width: 75.w, height: 16.h),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, size: 30),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
