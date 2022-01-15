import 'package:flutter/material.dart';

class diet_detail extends StatefulWidget {
  diet_detail({Key? key}) : super(key: key);

  @override
  _diet_detailState createState() => _diet_detailState();
}

class _diet_detailState extends State<diet_detail> {
  double _screenWidth = 0;
  double _screenH = 0;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _screenH = MediaQuery.of(context).size.height;
    _screenWidth = MediaQuery.of(context).size.width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Consumption for Protein")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 400,
            height: 600,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://github.com/RayLyu-Mac/fit-anywhere/blob/ray/assets/images/p3.png?raw=true"))),
          ),
        ],
      ),
    );
  }
}
