import 'package:beautiful_indonesia/data.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class TabBarMenu extends StatefulWidget {
  // final List<Place> place;

  const TabBarMenu({Key? key}) : super(key: key);

  @override
  State<TabBarMenu> createState() => _TabBarMenuState();
}

class _TabBarMenuState extends State<TabBarMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  List<Tab> myTab = [
    const Tab(
      text: 'Recomended',
    ),
    const Tab(
      text: 'Popular',
    ),
    const Tab(
      text: 'New Destination',
    ),
    const Tab(
      text: 'Hidden Place',
    ),
    const Tab(
      text: 'Nature',
    ),
    const Tab(
      text: 'Domestic',
    )
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTab.length);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          TabBar(
            controller: _tabController,
            tabs: myTab,
            unselectedLabelColor: Colors.grey,
            unselectedLabelStyle: TextStyle(fontSize: 12),
            labelStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            indicatorSize: TabBarIndicatorSize.tab,
            isScrollable: true,
            labelColor: Colors.black,
            // add it here
            indicator: DotIndicator(
              color: Colors.black,
              distanceFromCenter: 16,
              radius: 3,
              paintingStyle: PaintingStyle.fill,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
