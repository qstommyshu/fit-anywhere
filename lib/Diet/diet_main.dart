import 'package:flutter/material.dart';
import 'qr_page.dart';

class diet_main extends StatefulWidget {
  diet_main({Key? key}) : super(key: key);

  @override
  _diet_mainState createState() => _diet_mainState();
}

class _diet_mainState extends State<diet_main> {
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
      appBar: AppBar(
        title: const Text("Diet Summary"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 20,
              left: _screenWidth / 2,
              child: Text("Monthly Summary")),
          Container(
            width: _screenWidth / 2,
            height: _screenH / 4,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://github.com/RayLyu-Mac/fit-anywhere/blob/ray/assets/images/p1.png?raw=true"))),
          ),
          const Text("This Month Summary"),
          FloatingActionButton(onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => qr_scan()));
          })
        ],
      ),
    );
  }
}
