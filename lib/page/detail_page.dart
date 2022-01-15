import 'package:flutter/material.dart';
import 'package:flutter_excersises_app/theme.dart';
import 'package:flutter_excersises_app/widgets/bottom_nav.dart';
import 'package:flutter_excersises_app/widgets/search_bar.dart';
import 'package:flutter_excersises_app/widgets/session_card.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

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
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/meditation_bg.png',
                  ),
                  fit: BoxFit.fitWidth,
                ),
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
                      'Meditation',
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
                        'Life happier and healthier by learning the fundamentals of meditation and mindfullnes',
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: const SearchBar(),
                    ),
                    Wrap(
                      spacing: 20,
                      runSpacing: 20,
                      children: const [
                        SessionCard(
                          sessionNum: 01,
                          isDone: true,
                        ),
                        SessionCard(
                          sessionNum: 02,
                        ),
                        SessionCard(
                          sessionNum: 03,
                        ),
                        SessionCard(
                          sessionNum: 04,
                        ),
                        SessionCard(
                          sessionNum: 05,
                        ),
                        SessionCard(
                          sessionNum: 06,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Meditation',
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      height: 90,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/Meditation_women_small.svg',
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Basic 2',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                                Text(
                                  'Start your deepen practices',
                                  style: Theme.of(context).textTheme.subtitle1,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                        ],
                      ),
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
