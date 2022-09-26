import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filtersScreen.dart';

class MainDrawer extends StatelessWidget {
  Widget listTileBuilder(
      String title, IconData icn, BuildContext ctx, Function tapHandler) {
    return ListTile(
      leading: Icon(
        icn,
        size: 26,
        color: Theme.of(ctx).primaryColor,
      ),
      title: Text(
        title,
        style: TextStyle(
            color: Theme.of(ctx).primaryColor,
            fontSize: 24,
            fontWeight: FontWeight.bold),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(color: Theme.of(context).primaryColor),
            child: Text(
              'Reading Book',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          listTileBuilder('Books', Icons.book_sharp, context, () {
            Navigator.of(context).pushReplacementNamed('/');
          }),
          listTileBuilder('Filters', Icons.filter, context, () {
            Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
          }),
        ],
      ),
    );
  }
}
