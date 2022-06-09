import 'package:flutter/material.dart';

class SliverAppBarWidget extends StatelessWidget {
  final List<Widget> actions;
  final String title;
  final Widget leadingWidget;
  final Color backgroundColor;
  final TabController? tabController;

  SliverAppBarWidget({
    required this.actions,
    required this.title,
    required this.leadingWidget,
    required this.backgroundColor,
    this.tabController,
    Key? key,
  }) : super(key: key);

  final List<Widget> tabs = [
    const Tab(
      child: Text('All'),
    ),
    const Tab(
      child: Text('Favorites'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: backgroundColor,
      leading: leadingWidget,
      title: Text(
        title,
        style:
            TextStyle(fontSize: MediaQuery.of(context).size.height * 2.2 / 100),
      ),
      centerTitle: true,
      actions: actions,
      leadingWidth: 0,
      elevation: 2,
      pinned: true,
      bottom: tabController != null
          ? TabBar(
            indicatorColor: Colors.white,
              controller: tabController,
              tabs: tabs,
            )
          : null,
    );
  }
}
