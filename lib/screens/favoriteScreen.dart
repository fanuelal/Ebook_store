import 'package:flutter/material.dart';
import '../models/book.dart';
import '../widgets/book_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Book> favoritedBooks;
  final Function _toggleHandler;
  FavoriteScreen(this._toggleHandler, this.favoritedBooks);

  @override
  Widget build(BuildContext context) {
    if (favoritedBooks.isEmpty) {
      return Center(
        child: Text('Add your favorite Book!'),
      );
    } else {
      return Scaffold(
        body: ListView.builder(
            itemBuilder: (context, index) {
              bool isFavorited(String bookId) {
                  return favoritedBooks.any((book) => book.id == bookId);
              }
              return BookItem(
                  id: favoritedBooks[index].id,
                  price: favoritedBooks[index].rentPrice,
                  title: favoritedBooks[index].title,
                  imageUrl: favoritedBooks[index].imgUrl,
                  permited: favoritedBooks[index].permited,
                  year: favoritedBooks[index].year,
                  size: favoritedBooks[index].volume,
                  isfavorited: isFavorited(favoritedBooks[index].id),
                  onToggleHandler: _toggleHandler
                  );
            },
            itemCount: favoritedBooks.length),
      );
    }
  }
}
