import 'package:flutter/material.dart';

class Poster {
  String type;
  String name;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num rating;
  String review;
  num height;
  Poster(
    this.type,
    this.name,
    this.publisher,
    this.date,
    this.imgUrl,
    this.score,
    this.rating,
    this.review,
    this.height,
  );

  static List<Poster> generatePosters() {
    return [
      Poster(
        'Poster',
        'Transport',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster1.jpg',
        5.0,
        221,
        'Good...',
        220.0,
      ),
      Poster(
        'Poster',
        'Customer Journey',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster2.jpg',
        5.0,
        221,
        'Good...',
        240.0,
      ),
      Poster(
        'Poster',
        'Smart Home',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster3.jpg',
        5.0,
        221,
        'Good...',
        270.0,
      ),
      Poster(
        'Poster',
        'Offline VS Online',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster4.jpg',
        5.0,
        221,
        'Good...',
        220.0,
      ),
      Poster(
        'Poster',
        'Bus VS Car',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster5.jpg',
        5.0,
        221,
        'Good...',
        240.0,
      ),
      Poster(
        'Poster',
        'Cofee Time',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster6.jpg',
        5.0,
        221,
        'Good...',
        270.0,
      ),
      Poster(
        'Poster',
        'Cofee Brewing',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster7.jpg',
        5.0,
        221,
        'Good...',
        220.0,
      ),
      Poster(
        'Poster',
        'Health',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster8.jpg',
        5.0,
        221,
        'Good...',
        240.0,
      ),
      Poster(
        'Poster',
        'Macam-Macam Bullying',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster9.jpg',
        5.0,
        221,
        'Good...',
        270.0,
      ),
      Poster(
        'Poster',
        'Bullying Adalah',
        'Student',
        DateTime(2022, 3, 21),
        'assets/images/poster10.jpg',
        5.0,
        221,
        'Good...',
        220.0,
      ),
    ];
  }
}
