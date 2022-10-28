import 'package:flutter/material.dart';
import 'package:mini_project_2/models/poster.dart';
import 'package:mini_project_2/pages/detail/poster_cover.dart';
import 'package:mini_project_2/pages/detail/poster_detail.dart';
import 'package:mini_project_2/pages/detail/poster_review.dart';

class DetailPage extends StatelessWidget {
  final Poster poster;
  const DetailPage(this.poster, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
          child: Column(
        children: [
          PosterDetail(poster),
          PosterCover(poster),
          PosterReview(poster)
        ],
      )),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.black,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ))
      ],
    );
  }
}
