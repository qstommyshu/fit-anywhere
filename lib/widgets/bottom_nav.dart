import 'package:flutter/material.dart';
import 'package:flutter_excersises_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_excersises_app/Diet/diet_main.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          BottomNavbarItem(
            svgSrc: 'assets/icons/calendar.svg',
            label: 'Today',
          ),
          BottomNavbarItem(
            svgSrc: 'assets/icons/gym.svg',
            label: 'All Excersises',
            isActive: true,
          ),
          BottomNavbarItem(
            svgSrc: 'assets/icons/Settings.svg',
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class BottomNavbarItem extends StatelessWidget {
  final String? svgSrc;
  final String? label;
  final bool? isActive;

  const BottomNavbarItem({
    Key? key,
    this.svgSrc,
    this.label,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => diet_main()));
          },
          child: Column(
            children: [
              SvgPicture.asset(svgSrc!),
              const Spacer(),
              Text(
                label!,
                style: TextStyle(
                  color: isActive! ? activeIconColor : textColor,
                ),
              ),
            ],
          )),
    );
  }
}
