import 'package:flutter/material.dart';

class SliverTabBarWidget extends StatelessWidget {
  final TabController? tabController;

  const SliverTabBarWidget({Key? key,this.tabController,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView( 
      controller: tabController,
      children: <Widget>[
        Container(
          color: Colors.white,
          child: const Text("It's cloudy here"),
        ),
        Container(
          color: Colors.blue,
          child: const Text("It's cloudy here"),
        ),
      ],
    );
  }
}