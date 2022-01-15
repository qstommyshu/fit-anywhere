import 'package:flutter/material.dart';

class manu_input extends StatefulWidget {
  manu_input({Key? key}) : super(key: key);

  @override
  _manu_inputState createState() => _manu_inputState();
}

class _manu_inputState extends State<manu_input> {
  String drop = "chicken";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manual Input your meal")),
      body: Center(
        child: Column(
          children: [
            DropdownButton(
                value: drop,
                onChanged: (value) {
                  setState(() {
                    drop = value.toString();
                  });
                },
                items: <String>[
                  "chicken",
                  "beef",
                  "pork",
                  "noodle",
                  "rice",
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList()),
          ],
        ),
      ),
    );
  }
}
