import 'package:bookely/core/resources/images_app.dart';
import 'package:bookely/core/resources/styles.dart';
import 'package:bookely/featuers/home_books/data/model/book_model.dart';
import 'package:flutter/material.dart';

class BookItemFree extends StatelessWidget {
   BookItemFree({super.key, required this.bookModel, required this.bookModels});

  final BookModel bookModel;
  final List<BookModel> bookModels;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          InkWell(
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
                  "webReaderLink": bookModel.volumeInfo!.previewLink ?? "",
                  'similarBooks': similarBooks,
                  "accessInfo": bookModel.accessInfo,
                },
              );
            },

            child: Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: (bookModel.volumeInfo?.imageLinks?.thumbnail != null)
                      ? NetworkImage(
                          bookModel.volumeInfo!.imageLinks!.thumbnail!,
                        )
                      : AssetImage(AppImages.testimage) as ImageProvider,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bookModel.volumeInfo?.title ?? 'No title',
                  style: AppStyle.text22,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  bookModel.volumeInfo?.description ??
                      'No description available',
                  style: AppStyle.text22,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  (bookModel.volumeInfo?.authors != null &&
                          bookModel.volumeInfo!.authors!.isNotEmpty)
                      ? bookModel.volumeInfo!.authors!.first
                      : 'Unknown Author',
                ),
                Text(
                  bookModel.saleInfo?.listPrice?.amount != null
                      ? "${bookModel.saleInfo!.listPrice!.amount} EGP"
                      : "Free",
                  style: AppStyle.text22,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
