import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:mini_project_2/models/poster.dart';
import 'package:mini_project_2/pages/home/widgets/poster_item.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class MadingGridView extends StatelessWidget {
  final int selected;
  final PageController pageController;
  final Function callback;
  MadingGridView(this.selected, this.pageController, this.callback, {Key? key})
      : super(key: key);

  final posterlist = Poster.generatePosters();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: [
          StaggeredGridView.countBuilder(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              crossAxisCount: 4,
              itemCount: posterlist.length,
              itemBuilder: (_, index) => PosterItem(posterlist[index]),
              staggeredTileBuilder: (_) => const StaggeredTile.fit(2)),
          Container()
        ],
      ),
    );
  }
}
