import 'package:bookely/core/resources/images_app.dart';
import 'package:bookely/featuers/home_books/data/model/book_model.dart';
import 'package:flutter/material.dart';

class BookItem extends StatelessWidget {
  const BookItem({
    super.key,
    required this.bookModel,
    required this.bookModels,
  });

  final BookModel bookModel;
  final List<BookModel> bookModels;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final similarBooks = bookModels.where((b) {
          final currentCategory = bookModel.volumeInfo?.categories?.first;
          final bookCategory = b.volumeInfo?.categories?.first;
          return bookCategory == currentCategory && b.id != bookModel.id;
        }).toList();

        Navigator.pushNamed(
          context,
          "DetelesScreen",
          arguments: {
            "image":
                bookModel.volumeInfo?.imageLinks?.thumbnail ??
                AppImages.testimage,
            "title": bookModel.volumeInfo?.title ?? 'No title',
            "Author":
                bookModel.volumeInfo?.authors != null &&
                    bookModel.volumeInfo!.authors!.isNotEmpty
                ? bookModel.volumeInfo!.authors!.first
                : 'Unknown Author',
            "amount": bookModel.saleInfo?.listPrice?.amount != null
                ? "${bookModel.saleInfo!.listPrice!.amount} EGP"
                : "Free",
            "previewLink": bookModel.volumeInfo!.previewLink ?? "",
            'similarBooks': similarBooks,
            "accessInfo": bookModel.accessInfo,
          },
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        width: 150,
        height: 224,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(
              bookModel.volumeInfo?.imageLinks?.thumbnail ??
                  AppImages.testimage,
            ),
          ),
        ),
      ),
    );
  }
}
