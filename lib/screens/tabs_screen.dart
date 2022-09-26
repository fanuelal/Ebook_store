import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/book.dart';
import './catagirizer_Screen.dart';
import './favoriteScreen.dart';
import './mainDrawer.dart';
import './Deposit.dart';

class TabScreen extends StatefulWidget {
  final List<Book> favoriteBooks;
  final Function _toggleHandler;
  TabScreen(this._toggleHandler, this.favoriteBooks);
  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _pageList;
  int _selectPageIndex = 0;
  @override
  void initState() {
    _pageList = [
      {'page': CatagorizerScreen(), 'title': 'Categories'},
      {
        'page': FavoriteScreen(widget._toggleHandler, widget.favoriteBooks),
        'title': 'Favorite Books'
      },
      {'page': DepositScreen(),
        'title': 'Deposit'}
    ];
    super.initState();
  }

  void _selectpage(int index) {
    setState(() {
      _selectPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          _pageList[_selectPageIndex]['title'],
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      body: _pageList[_selectPageIndex]['page'],
      drawer: MainDrawer(),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        index: _selectPageIndex,
        onTap: _selectpage,
        backgroundColor: Colors.white,
        color: Theme.of(context).primaryColor,
        animationDuration: Duration(milliseconds: 350),
        items: [
          Icon(Icons.home, color: Colors.white),
          Icon(Icons.favorite, color: Colors.white),
          Icon(Icons.monetization_on_rounded, color: Colors.white)
        ],
      ),
    );
  }
}
