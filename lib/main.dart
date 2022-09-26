import 'package:flutter/material.dart';
import './screens/catagorizedBook_screen.dart';
import './screens/BookDetail.dart';
import './screens/tabs_screen.dart';
import './screens/filtersScreen.dart';
import './modelData/DataModels.dart';
import './models/book.dart';
import './screens/Deposit.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filter = {
    'old': false,
    'withAudio': false,
    'educational': false,
    'digitalOnly': false
  };
  List<Book> favoritedBooks = [];
  List<Book> _filteredBooks = BookList;
  void _applyFilters(Map<String, bool> filterData) {
    setState(() {
      _filter = filterData;

      _filteredBooks = BookList.where((book) {
        if (_filter['old'] && book.isOld) return true;
        if (_filter['withAudio'] && book.withaudio) return true;
        if (_filter['educational'] && book.educational) return true;
        if (_filter['digitalOnly'] && book.DigitalOnly) return true;
        return false;
      }).toList();
    });
  }

  void _toggleFavorite(String bookId) {
    final exitedbookIndex =
        favoritedBooks.indexWhere((book) => book.id == bookId);
    if (exitedbookIndex >= 0) {
      setState(() {
        favoritedBooks.removeAt(exitedbookIndex);
      });
    } else {
      setState(() {
        favoritedBooks.add(BookList.firstWhere((book) => book.id == bookId));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Emedebr',
        theme: ThemeData(
          primaryColor: Colors.blue,
          secondaryHeaderColor: Colors.white,
          canvasColor: Colors.white,
          fontFamily: "RobotMono",
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Colors.white,
              ),
              bodyText2: TextStyle(
                color: Colors.blueGrey,
              ),
              headline6: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: "RobotoMono")),
        ),
        routes: {
          '/': (ctx) => TabScreen(_toggleFavorite, favoritedBooks),
          CatagorizedBook.routeName: (ctx) =>
              CatagorizedBook(favoritedBooks, _toggleFavorite, _filteredBooks),
          BookDetail.routerName: (ctx) => BookDetail(),
          FilterScreen.routeName: (ctx) => FilterScreen(_filter, _applyFilters),
          DepositScreen.routeName: (ctx) => DepositScreen()
        });
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
