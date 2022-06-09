import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:technical_test/src/widgets/sliver_tabbar_widget.dart';

import '../controller/home_controller.dart';
import '../widgets/sliver_appbar_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) :super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends StateMVC<HomePage>with TickerProviderStateMixin {

  late TabController _tabController;
  late HomeController _con;

  _HomePageState() : super(HomeController()) {
    _con = controller as HomeController;
  }



  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> actions = [
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: TextButton(
          onPressed: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 8 / 100,
                height: MediaQuery.of(context).size.width * 8 / 100,
                decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100)),
                child: const Icon(
                  Icons.replay_rounded,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    ];
    

    return Scaffold(
      backgroundColor: Colors.white,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBarWidget(
            actions: actions,
            title: 'Posts',
            leadingWidget: _leadingWidget(),
            backgroundColor: Colors.green,
            tabController: _tabController,
          ),
          ];      
          },
        body:         
          SliverTabBarWidget(tabController: _tabController),
        
      ),
    );
  }

  Widget _leadingWidget() {
    return Container();
  }
}
