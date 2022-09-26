import 'package:flutter/material.dart';
import '../modelData/DataModels.dart';
import '../widgets/catagory_items.dart';
import '../widgets/book_item.dart';

class CatagorizerScreen extends StatelessWidget {
  final isFavorited = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 380,
            decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50))),
            child: GridView(
              padding: const EdgeInsets.all(15),
              children: CatagoryList.map((cataData) => CatagoryItem(
                  cataData.id, cataData.title, cataData.imageUrl)).toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 20,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: double.infinity,
            child: Text(
              "Popular Books",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          SizedBox(
              height: 180,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(12),
                itemCount: 4,
                separatorBuilder: (context, index) => const SizedBox(
                  width: 12,
                ),
                itemBuilder: ((context, index) => Container(
                  
                  width: 100,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [ BoxShadow(
                    blurRadius: 5.0,
                    offset: Offset(5, 5),
                    color: Color(0xFFA7A9AF),
            )]
                  ),
                  child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(BookList[index].imgUrl,
                      height: 150, width: double.infinity, fit: BoxFit.cover),
                ),
                Positioned(
                  bottom: 13,
                  right: 10,
                  child: Container(
                    width: 110,
                    color: Colors.black45,
                    // padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: Container(
                        margin: EdgeInsets.only(left: 30),
                        child: Text(
                          BookList[index].title,
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                )
              ],
            ),
                )
                ),
                ),
              ),
        ],
      ),
    );
  }
}
