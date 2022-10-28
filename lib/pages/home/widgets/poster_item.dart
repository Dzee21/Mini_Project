import 'package:flutter/material.dart';
import 'package:mini_project_2/models/poster.dart';

import '../../detail/detail.dart';

class PosterItem extends StatelessWidget {
  final Poster poster;
  const PosterItem(this.poster, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => DetailPage(poster))),
      child: Container(
        height: poster.height as double,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(poster.imgUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
