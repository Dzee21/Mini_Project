import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mini_project_2/models/poster.dart';
import 'package:flutter/material.dart';

class PosterReview extends StatelessWidget {
  final Poster poster;
  const PosterReview(this.poster, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const SizedBox(
                height: 15,
              ),
              Text.rich(TextSpan(children: [
                TextSpan(
                    text: poster.review,
                    style: const TextStyle(
                        color: Colors.black, fontSize: 16, height: 1.8)),
                const TextSpan(
                    text: 'Read more',
                    style: TextStyle(color: Colors.black, fontSize: 16))
              ]))
            ],
          )
        ],
      ),
    );
  }
}
