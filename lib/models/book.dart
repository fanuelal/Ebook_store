import 'package:flutter/material.dart';


enum BookSize { Large, Medium, Small }
enum AgeFor { children, young, Adult }

class Book {
  final String id;
  final List<String> catagory;
  final String title;
  final String imgUrl;
  final String author;
  final String year;
  final double rentPrice;
  final int rate;
  final BookSize volume;
  final AgeFor permited;
  final bool isOld;
  final bool withaudio;
  final bool educational;
  final bool DigitalOnly;
  const Book(
      { @required this.id,
        @required this.catagory,
        @required this.imgUrl,
        @required this.title,
        @required this.author,
        @required this.year,
        @required this.rentPrice,
        @required this.rate,
        @required this.volume,
        @required this.permited,
        this.isOld = false,
        this.withaudio = false,
        this.DigitalOnly = false,
        this.educational = false

      });
}
