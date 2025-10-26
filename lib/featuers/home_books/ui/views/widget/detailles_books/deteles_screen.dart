import 'package:bookely/core/resources/colors_app.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/detailles_books/detels_book.dart';
import 'package:flutter/material.dart';

class DetelesScreen extends StatelessWidget {
  const DetelesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,

        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 40),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(children: [BookDetailsScreen()]),
    );
  }
}
