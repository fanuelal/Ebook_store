import 'package:flutter/material.dart';
import '../models/book.dart';
import '../widgets/book_item.dart';

class CatagorizedBook extends StatelessWidget {
  static const routeName = "/catagorizedBooks";
  final List<Book> _available;
  final List<Book> _favoritedBooks;
  final Function _toggleHandler;
  CatagorizedBook(this._favoritedBooks, this._toggleHandler,this._available);
    bool isFavorited(String bookId) {
    return _favoritedBooks.any((book) => book.id == bookId);
  }
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String cataID = routeArgs['id'];
    final String cataTitle = routeArgs['title'];
    final catagorizedBook = _available.where((book) {
      return book.catagory.contains(cataID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(cataTitle),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
          itemBuilder: (context, index) {
            return BookItem(
              id: catagorizedBook[index].id,
              price: catagorizedBook[index].rentPrice,
              title: catagorizedBook[index].title,
              imageUrl: catagorizedBook[index].imgUrl,
              permited: catagorizedBook[index].permited,
              year: catagorizedBook[index].year,
              size: catagorizedBook[index].volume,
              imgUrl: catagorizedBook[index].imgUrl,
              author: catagorizedBook[index].author,
              isfavorited: isFavorited(catagorizedBook[index].id),
              onToggleHandler: _toggleHandler
            );
          },
          itemCount: catagorizedBook.length),
    );
  }
}
