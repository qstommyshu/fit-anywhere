import 'package:flutter/material.dart';
import 'package:flutter_excersises_app/page/detail_page.dart';
import 'package:flutter_excersises_app/page/random_page.dart';
import 'package:flutter_excersises_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_excersises_app/page/random_page.dart';

class CategoryCard extends StatelessWidget {
  final String? svgSrc;
  final String? title;

  const CategoryCard({
    Key? key,
    this.svgSrc,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 17),
            blurRadius: 17,
            spreadRadius: -23,
            color: shadowColor,
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const RandomPage()));
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SvgPicture.asset(svgSrc!),
                const Spacer(),
                Text(
                  title!,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 15,
                      ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
