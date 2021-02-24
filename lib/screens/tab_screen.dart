import 'package:flutter/material.dart';

//widgets
import '../widgets/drawer_button.dart';
import '../widgets/icons.dart';
import '../widgets/tab_bar_tabs.dart';

//screens
import '../screens/list_tab.dart';
import '../screens/map_tab.dart';

class TabScreen extends StatefulWidget {
  static const routeName = "/tabScreen";

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  Color selectedColor = Colors.white;
  Color unselectedColor = Color(0xffC4C4C4);
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    TabBar _tabBar = TabBar(
      labelPadding: EdgeInsets.all(0),
      onTap: (index) {
        setState(() {
          selectedIndex = index;
        });
      },
      tabs: [
        TabBarTab(
          selectedIndex: selectedIndex,
          index: 0,
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
          icon: Icons.list,
          label: "List",
        ),
        TabBarTab(
          selectedIndex: selectedIndex,
          index: 1,
          selectedColor: selectedColor,
          unselectedColor: unselectedColor,
          icon: CustomIcons.map_icon,
          label: "Map",
        ),
      ],
    );
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: _tabBar.preferredSize,
            child: ColoredBox(
              color: Colors.white,
              child: _tabBar,
            ),
          ),
          leading: DrawerButton(
            onPressed: () {},
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("BAITY"),
              Text(
                "( 1,043,899 ) result ( For Sale ) ",
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CustomIcons.filter_icon,
                size: 20,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(
                CustomIcons.descending_menu_icon,
                size: 20,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            ListTab(),
            MapTab(),
          ],
        ),
      ),
    );
  }
}
