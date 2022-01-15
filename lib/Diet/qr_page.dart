import 'package:flutter/material.dart';

class qr_scan extends StatefulWidget {
  qr_scan({Key? key}) : super(key: key);

  @override
  _qr_scanState createState() => _qr_scanState();
}

class _qr_scanState extends State<qr_scan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("QR code scanner")),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://img.search.brave.com/rHhw_iVTor2HJIntvEv8r-QtSH-yFy8XqWzSsYxOveo/fit/800/800/ce/1/aHR0cDovL3NvY2lh/bC5zZWxlY3RpdmUu/Y29tL3VwbG9hZHMv/OC8yLzMvOC84MjM4/NDIxNC9xci1jb2Rl/c19vcmlnLmpwZw"))),
        ),
      ),
    );
  }
}
