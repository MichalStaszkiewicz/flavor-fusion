import 'package:auto_route/auto_route.dart';
import 'package:flavor_fusion/presentation/screens/favorite_screen.dart';
import 'package:flavor_fusion/presentation/screens/home_screen.dart';
import 'package:flavor_fusion/presentation/screens/search_screen.dart';
import 'package:flavor_fusion/presentation/widgets/recipe_group.dart';
import 'package:flavor_fusion/utility/global.dart';
import 'package:flavor_fusion/utility/service_locator.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage();

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<BottomNavigationBarItem> _bottomNavItems = const [
    BottomNavigationBarItem(
      label: "Home",
      icon: Icon(Icons.home),
    ),
    BottomNavigationBarItem(
      label: "Search",
      icon: Icon(Icons.search),
    ),
    BottomNavigationBarItem(
      label: "Favorite",
      icon: Icon(Icons.favorite),
    ),
  ];
  List<Widget> _screens = [HomeScreen(), SearchScreen(), FavoriteScreen()];
  List<String> _appBarTitles = ['Home', "Search Recipes ", "Favorite"];
  int _currentScreen = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            _currentScreen = index;
            setState(() {});
          },
          currentIndex: _currentScreen,
          items: _bottomNavItems),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          _appBarTitles[_currentScreen],
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: _screens[_currentScreen],
    );
  }
}
