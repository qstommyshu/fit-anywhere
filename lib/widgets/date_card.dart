import 'package:flutter/material.dart';
import 'package:flutter_excersises_app/theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_excersises_app/widgets/check_box.dart';
import 'package:flutter_excersises_app/page/Move_page.dart';
import 'package:flutter_excersises_app/page/test_page.dart';

class DateCard extends StatelessWidget {
  final int? id;
  final int? setNum;
  bool? isDone;
  final String? imageAddress;

  DateCard({
    Key? key,
    this.id,
    this.setNum,
    this.isDone = false,
    this.imageAddress
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:() {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MovePage()));
      },
      child: Container(
      // onTap: () {
      //   Navigator.push(
      //       context, MaterialPageRoute(builder: (context) => const RandomPage()));
      // },
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: 90,
      decoration: BoxDecoration(
        // color: isDone! ? blueColor : Colors.white,
        color: Colors.white,
      borderRadius: BorderRadius.circular(13),
        // image: DecorationImage(image:AssetImage('assets/icons/yoga_women.svg')),
      ),
      child: Row(
        children: [
          Image.asset(
            this.id! % 2 == 0 ?
            'assets/icons/plank.jpg' : 'assets/icons/Pushup.jpg',
            fit:BoxFit.fitHeight,
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
                  '$setNum set',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Text(
                  this.id! % 2 == 0 ?
                  'Plank L3' : 'Push Up L4',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                // MyCheckBox()
              ],
            ),
          ),
    //       Checkbox(value: isDone, onChanged: (bool? value) {
    // setState(() {
    // isDone = value!;
    // });)
    //       MyCheckBox()
          if (this.id! == 0)
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Image.asset('assets/icons/checkMark.png'),
            ),
        ],
      ),
    )
    );
  }
}
