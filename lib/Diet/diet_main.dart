import 'package:flutter/material.dart';
import 'qr_page.dart';
import 'manu_input.dart';

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
      backgroundColor: Colors.blueAccent.shade400,
      appBar: AppBar(
        title: const Text("Diet Summary"),
      ),
      body: Stack(
        children: [
          Positioned(
              top: _screenH / 20,
              left: _screenWidth / 2,
              child: Text("Monthly Summary")),
          Positioned(
              top: _screenH / 4,
              left: _screenWidth / 5,
              child: Container(
                width: _screenWidth / 1.8,
                height: _screenH / 3.5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://github.com/RayLyu-Mac/fit-anywhere/blob/ray/assets/images/p1.png?raw=true"))),
              )),
          Positioned(
              top: _screenH / 4,
              left: _screenWidth / 5,
              child: Text("This Month Summary")),
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
