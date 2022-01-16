import 'package:flutter/material.dart';

class main_dash extends StatefulWidget {
  main_dash({Key? key}) : super(key: key);

  @override
  _main_dashState createState() => _main_dashState();
}

class _main_dashState extends State<main_dash> {
  double _screenWidth = 0;
  double _screenH = 0;
  List<List> options = [
    ["Push Up x 10", "30"],
    ["Chin Up x 3", "20"],
    ["Drink water (200 ml)", "8"],
    ["Walk around table", "3"]
  ];
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenH = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade50,
      body: Column(
        children: [
          SizedBox(
            height: _screenH / 20,
          ),
          Text("Health"),
          SizedBox(
            height: _screenH / 30,
          ),
          Text(
            "1999 Pts",
            textAlign: TextAlign.center,
            style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: _screenH / 18),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.arrow_upward_rounded,
                color: Colors.green,
              ),
              Text(
                "15 all time",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: _screenH / 33),
              )
            ],
          ),
          SizedBox(
            height: _screenH / 30,
          ),
          Container(
            width: _screenWidth / 1.2,
            height: _screenH / 2.1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: _screenH / 60,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: _screenWidth / 20,
                    ),
                    Text(
                      "My Recommend",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.w800,
                          fontSize: _screenH / 40),
                    ),
                    Icon(Icons.star)
                  ],
                ),
                Text("     Sort by most fittest"),
                SizedBox(
                  height: _screenH / 60,
                ),
                for (var i = 0; i < options.length; i++)
                  Container(
                    child: Center(
                      child: Row(
                        children: [
                          Text(
                            options[i][0],
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: _screenH / 38),
                          ),
                          SizedBox(
                            width: _screenWidth / 15,
                          ),
                          Icon(
                            Icons.arrow_upward,
                            color: Color.fromARGB(255, 64, 169, 68),
                          ),
                          Text(
                            options[i][1],
                          )
                        ],
                      ),
                    ),
                    margin: EdgeInsets.symmetric(
                        horizontal: _screenWidth / 60, vertical: _screenH / 70),
                    padding: EdgeInsets.symmetric(vertical: _screenH / 100),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border(
                            top: BorderSide(
                                width: 2, color: Colors.green.shade300))),
                  ),
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.green.shade100,
                borderRadius: BorderRadius.circular(15)),
          ),
          SizedBox(
            height: _screenH / 60,
          ),
          Row(children: [
            Text(
              "        View More",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: _screenH / 43),
            ),
            SizedBox(
              width: _screenH / 40,
            ),
            Icon(
              Icons.arrow_right_alt_outlined,
              color: Color.fromARGB(255, 64, 169, 68),
            ),
          ])
        ],
      ),
    );
  }
}
