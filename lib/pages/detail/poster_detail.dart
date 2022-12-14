import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';
import 'package:mini_project_2/models/poster.dart';
import 'package:flutter/material.dart';

class PosterDetail extends StatelessWidget {
  final Poster poster;
  const PosterDetail(this.poster, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          poster.type.toUpperCase(),
          style: const TextStyle(
            color: Colors.greenAccent,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          poster.name,
          style: TextStyle(fontSize: 24, color: Colors.black, height: 1.2),
        ),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text.rich(TextSpan(children: [
              TextSpan(
                  text: 'Published from', style: TextStyle(color: Colors.grey)),
              TextSpan(
                  text: poster.publisher,
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w500))
            ])),
            Text(
              DateFormat.yMMMd().format(poster.date),
              style: const TextStyle(color: Colors.grey),
            )
          ],
        )
      ]),
    );
  }
}
