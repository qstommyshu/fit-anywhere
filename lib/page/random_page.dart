import 'package:flutter/material.dart';
import 'package:flutter_excersises_app/theme.dart';
import 'package:flutter_excersises_app/widgets/bottom_nav.dart';
import 'package:flutter_excersises_app/widgets/date_card.dart';
import 'package:flutter_excersises_app/widgets/search_bar.dart';
import 'package:flutter_excersises_app/widgets/session_card.dart';
import 'package:flutter_svg/svg.dart';

class RandomPage extends StatelessWidget {
  const RandomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .50,
              decoration: const BoxDecoration(
                color: blueLightColor,
                // image: DecorationImage(
                //   image: AssetImage(
                //     'assets/images/meditation_bg.png',
                //   ),
                //   fit: BoxFit.fitWidth,
                // ),
              ),
            ),
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Text(
                      'This is RandomPage',
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontWeight: FontWeight.w900),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      '3 - 10 Min Course',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .6,
                      child: const Text(
                        'You can improve your productivity by doing some exercises in your work break',
                      ),
                    ),
                    // SizedBox(
                    //   width: MediaQuery.of(context).size.width * .5,
                    //   child: const SearchBar(),
                    // ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: const [
                        SessionCard(
                          sessionNum: 01,
                          isDone: true,
                        ),
                        // DateCard(
                        //   sessionNum: 02,
                        //   isDone: false,
                        // ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    for(var i=0 ;i<3; i++)
                      DateCard(
                        sessionNum: 03,
                          isDone: true,
                      )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
