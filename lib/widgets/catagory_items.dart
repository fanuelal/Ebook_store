import 'package:flutter/material.dart';
import '../screens/catagorizedBook_screen.dart';

class CatagoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const CatagoryItem(this.id, this.title, this.imageUrl);

  void CatagorySelect(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
       CatagorizedBook.routeName , 
       arguments: {
          'id': id,
          'title': title
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => CatagorySelect(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: Stack(
        children: [
         Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,  
          ),
          alignment: Alignment.center,
          // padding: const EdgeInsets.all(15),
          child: Image.network(imageUrl, 
        width: double.infinity,
        fit: BoxFit.cover,
        ),

        ),
        Positioned(
          bottom: 5,
          right: 10,
          child: Container(
            width: 150,
            color: Colors.black54,
            child: Center(
              child: Text(
                title,
                style: TextStyle(color: Colors.white,
                fontSize: 20),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
        ),
        ],
      ),
    );
  }
}
