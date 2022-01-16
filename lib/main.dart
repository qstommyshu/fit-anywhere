import 'package:flutter/material.dart';
import 'package:flutter_excersises_app/page/dashboard.dart';
import 'package:flutter_excersises_app/theme.dart';
import 'package:flutter_svg/svg.dart';

import 'widgets/bottom_nav.dart';
import 'widgets/category_card.dart';
import 'widgets/search_bar.dart';

import 'Diet/diet_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Excersises App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Cairo",
        scaffoldBackgroundColor: backgroundColor,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: textColor,
            ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * .50,
            decoration: const BoxDecoration(
              color: Color(0xfff5c3b8),
              image: DecorationImage(
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
                alignment: Alignment.centerLeft,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      alignment: Alignment.center,
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        color: Color(0xfff2bea1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'Good Mornig \nSir',
                    style: Theme.of(context).textTheme.headline4?.copyWith(
                          fontWeight: FontWeight.w900,
                        ),
                  ),
                  const SearchBar(),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        CategoryCard(
                          svgSrc: 'assets/icons/Hamburger.svg',
                          title: 'Diet Recomendation',
                          pageTo: diet_main(),
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/Excrecises.svg',
                          title: 'Kegel Excersises',
                          pageTo: diet_main(),
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/Meditation.svg',
                          title: 'What is this?',
                          pageTo: diet_main(),
                        ),
                        CategoryCard(
                          svgSrc: 'assets/icons/yoga.svg',
                          title: 'steps',
                          pageTo: Dashboard(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
