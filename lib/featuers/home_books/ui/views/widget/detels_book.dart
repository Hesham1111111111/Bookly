import 'package:bookely/core/resources/images_app.dart';
import 'package:bookely/core/resources/styles.dart';
import 'package:bookely/featuers/home_books/ui/views/widget/show_book.dart';
import 'package:flutter/material.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final image = data["image"];
    final title = data["title"];
    final author = data["Author"];
    final amount = data["amount"];
    final similarBooks = data['similarBooks'] ?? [];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              width: 150,
              height: 224,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(image),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Text(
              title,
              style: AppStyle.text33,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            Text(author, style: AppStyle.text22, textAlign: TextAlign.center),

            const SizedBox(height: 10),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.star, color: Colors.orange),
                SizedBox(width: 5),
                Text("4.8 (2390)"),
              ],
            ),

            const SizedBox(height: 20),

            Center(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      amount,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(width: 16),

                    ElevatedButton(
                      onPressed: () async {
                        final webReaderLink =
                            data["accessInfo"]?.webReaderLink ??
                            data["previewLink"] ??
                            '';

                        if (webReaderLink.isNotEmpty) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  BookViewScreen(webReaderLink: webReaderLink),
                            ),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("No preview available"),
                            ),
                          );
                        }
                      },

                      child: const Text("View the book"),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 20),
            SizedBox(
              width: 400,
              height: 130,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: similarBooks.length,
                itemBuilder: (context, index) {
                  final book = similarBooks[index];
                  final imageUrl =
                      book.volumeInfo?.imageLinks?.thumbnail ??
                      AppImages.testimage;

                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Container(
                      width: 90,
                      height: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(imageUrl),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
