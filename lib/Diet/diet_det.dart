import 'package:flutter/material.dart';

class diet_detail extends StatefulWidget {
  diet_detail({Key? key}) : super(key: key);

  @override
  _diet_detailState createState() => _diet_detailState();
}

class _diet_detailState extends State<diet_detail> {
  @override
  Widget build(BuildContext context) {
    double _screenWidth = 0;
    double _screenH = 0;
    @override
    void didChangeDependencies() {
      super.didChangeDependencies();

      _screenH = MediaQuery.of(context).size.height;
      _screenWidth = MediaQuery.of(context).size.width;
    }

    return Scaffold(
      appBar: AppBar(title: Text("Detail Consumption for Protein")),
      body: Column(
        children: [
          Text(
            "Jan 2022 - Feb 2022",
            style: TextStyle(
              decoration: TextDecoration.underline,
            ),
          ),
          Container(
            width: _screenWidth / 2,
            height: _screenH / 3,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://github.com/RayLyu-Mac/fit-anywhere/blob/ray/assets/images/p2.png?raw=true"))),
          )
        ],
      ),
    );
  }
}
