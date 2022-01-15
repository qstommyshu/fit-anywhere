import 'package:flutter/material.dart';
import 'package:flutter_excersises_app/theme.dart';

class SessionCard extends StatelessWidget {
  final int? sessionNum;
  final bool? isDone;

  const SessionCard({
    Key? key,
    this.sessionNum,
    this.isDone = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 17),
                  blurRadius: 23,
                  spreadRadius: -13,
                  color: blueColor,
                ),
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        color: isDone! ? blueColor : Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: blueColor,
                        ),
                      ),
                      child: Icon(
                        Icons.play_circle_rounded,
                        color: isDone! ? Colors.white : blueColor,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Session $sessionNum',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
  }
}
