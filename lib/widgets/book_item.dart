import 'package:flutter/material.dart';
import '../models/book.dart';
import '../screens/BookDetail.dart';
import '../modelData/DataModels.dart';

class BookItem extends StatelessWidget {
  final String id;
  final String title;
  final BookSize size;
  final AgeFor permited;
  final String year;
  final String imageUrl;
  final double price;
  final String imgUrl;
  final String author;
  final bool isfavorited;
  final Function onToggleHandler;
  BookItem(
      {@required this.id,
      this.title,
      this.size,
      this.permited,
      this.year,
      this.imageUrl,
      this.price,
      this.imgUrl,
      this.author,
      this.isfavorited,
      this.onToggleHandler});

  String get AgeForText {
    if (permited == AgeFor.children) {
      return 'for Child';
    } else if (permited == AgeFor.Adult) {
      return "for Adult";
    } else if (permited == AgeFor.young) {
      return "for Young";
    } else {
      return "unknoun";
    }
  }

  String get SizeText {
    if (size == BookSize.Large)
      return "Large";
    else if (size == BookSize.Medium)
      return "Medium";
    else if (size == BookSize.Small)
      return "Small";
    else
      return "Unknown";
  }

  Future detailDisplay(BuildContext ctx) {
    return showDialog(
      context: ctx,
      builder: ((context) => AlertDialog(
            title: Text('$title'),
            content: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(imgUrl,
                      height: 150, width: 100, fit: BoxFit.cover),
                ),
                Positioned(
                  top: 0,
                  left: 120,
                  child: Container(
                    width: 150,
                    color: Colors.white,
                    // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            SizeText,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54),
                            softWrap: true,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('$author'),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('$AgeForText'),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('Year: $year'),
                        ),
                        // SizedBox(
                        //   height: 20,
                        // ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 20,
                            ),
                            Icon(Icons.star, size: 20),
                            Icon(Icons.star, size: 20),
                            Icon(Icons.star, size: 20),
                            Icon(Icons.star, size: 20),
                          ],
                        ),

                        ElevatedButton(
                          onPressed: () {},
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Text("Read")),
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(70, 25),

                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => detailDisplay(context),
      splashColor: Colors.grey,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [ BoxShadow(
                    blurRadius: 2.0,
                    offset: Offset(2, 2),
                    color: Color.fromARGB(255, 209, 211, 216),
            )]
        ),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          elevation: 0,
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Image.network(imageUrl,
                        height: 300, width: 200, fit: BoxFit.cover),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 150,
                      color: Colors.black45,
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.book,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 6),
                        Text(
                          '$SizeText ',
                        ),
                        SizedBox(width: 6),
                        Icon(
                          Icons.calendar_today,
                          color: Theme.of(context).primaryColor,
                        ),
                        SizedBox(width: 6),
                        Text('${year} E.c'),
                        SizedBox(width: 6),
                        Icon(
                          Icons.monetization_on,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text('${price} Birr'),
                        IconButton(
                          onPressed: () {
                            onToggleHandler(id);
                          },
                          icon: Icon(
                              isfavorited
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              color: Colors.red),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
