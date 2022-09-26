import 'package:flutter/material.dart';
import '../modelData/DataModels.dart';

class BookDetail extends StatelessWidget {
  static const routerName = "/BookDetailRoute";
  @override
  Widget build(BuildContext context) {
    final bookId = ModalRoute.of(context).settings.arguments as String;
    final BookDetailData = BookList.firstWhere((book) => book.id == bookId);
    return Scaffold(
        appBar: AppBar(
          title: Text('${BookDetailData.title}'),
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              height: 300,
              width: double.infinity,
              child: Image.network(
                BookDetailData.imgUrl,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text('Author: ${BookDetailData.author}', style: TextStyle(color: Theme.of(context).primaryColor), softWrap: true,),
                  Text('Year: ${BookDetailData.year}', style: TextStyle(color: Theme.of(context).primaryColor), softWrap: true,),
                  Text('Rante Price: ${BookDetailData.rentPrice}', style: TextStyle(color: Theme.of(context).primaryColor), softWrap: true,),
                  Text('Rate: ${BookDetailData.rate}', style: TextStyle(color: Theme.of(context).primaryColor), softWrap: true,),
                  Text('Volume: ${BookDetailData.volume}', style: TextStyle(color: Theme.of(context).primaryColor), softWrap: true,),
                  Text('Aproprate age: ${BookDetailData.year}', style: TextStyle(color: Theme.of(context).primaryColor), softWrap: true,),
                ],
              ),
              ),
          ],
        ));
  }
}
