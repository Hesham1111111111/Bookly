import 'package:bookely/core/resources/styles.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/custm_app_bar.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/list_view_free_book.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/list_views_all_book.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            slivers: [
              CustmAppBar(),

              ListViewsBook(),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30.0),
                  child: Text(
                    "Best Seller",
                    style: AppStyle.text33,
                  ),
                ),
              ),

              ListViewFreeBook(),
            ],
          ),
        ),
      ),
    );
  }
}
