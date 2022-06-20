import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/screens/grocery_screen.dart';
import '/screens/recipes_screen.dart';
import 'models/models.dart';
import 'screens/explore_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _selectedIndex = 0;

  static List<Widget> pages = <Widget>[
    const ExploreScreen(),
    RecipesScreen(),
    const GroceryScreen(),
  ];

  /* void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Consumer<TabManager>(
      builder: (BuildContext context, tabManager, child) {
        return Scaffold(
          appBar: AppBar(
              title: Text('Fooderlich',
                  style: Theme.of(context).textTheme.headline6)),
          body: IndexedStack(
            index: tabManager.selectedTab,
            children: pages,
          ),
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: tabManager.selectedTab,
              onTap: (index) => tabManager.goToTab(index),
              selectedItemColor:
                  Theme.of(context).textSelectionTheme.selectionColor,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.explore), label: 'Explore'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.book), label: 'Recipes'),
                BottomNavigationBarItem(
                    icon: Icon(Icons.format_list_bulleted), label: 'To Buy'),
              ]),
        );
      },
    );
  }
}
