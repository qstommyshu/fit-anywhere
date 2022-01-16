import 'package:flutter/material.dart';
import 'qr_page.dart';
import 'manu_input.dart';
import 'diet_det.dart';

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
              top: 0,
              left: 0,
              child: Container(
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => diet_detail()));
                      }),
                    )
                  ],
                ),
                width: _screenWidth - 5,
                height: _screenH,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/fit-anywhere/blob/ray/assets/images/p6.png?raw=true"))),
              )),
          Positioned(
              left: _screenWidth / 1.3,
              top: _screenH / 1.25,
              child: FloatingActionButton(
                  child: Icon(Icons.camera),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => qr_scan()));
                  })),
          Positioned(
              top: _screenH / 1.25,
              left: _screenWidth / 1.65,
              child: FloatingActionButton(
                child: Icon(Icons.wifi_protected_setup),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => manu_input()));
                },
              ))
        ],
      ),
    );
  }
}
