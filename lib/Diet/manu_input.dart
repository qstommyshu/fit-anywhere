import 'package:flutter/material.dart';

class manu_input extends StatefulWidget {
  manu_input({Key? key}) : super(key: key);

  @override
  _manu_inputState createState() => _manu_inputState();
}

class _manu_inputState extends State<manu_input> {
  String drop1 = "chicken";
  String drop2 = "Orange Juice";
  String drop3 = "Pudding";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Manual Input your meal")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Main Clause: "),
                DropdownButton(
                    value: drop1,
                    onChanged: (value) {
                      setState(() {
                        drop1 = value.toString();
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
                    }).toList())
              ],
            ),
            Row(
              children: [
                const Text("Drink: "),
                DropdownButton(
                    value: drop2,
                    onChanged: (value) {
                      setState(() {
                        drop2 = value.toString();
                      });
                    },
                    items: <String>[
                      "Orange Juice",
                      "Water",
                      "Wine",
                      "Sparkiling Water",
                      "None",
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList())
              ],
            ),
            Row(
              children: [
                const Text("Desert: "),
                DropdownButton(
                    value: drop3,
                    onChanged: (value) {
                      setState(() {
                        drop3 = value.toString();
                      });
                    },
                    items: <String>[
                      "Pudding",
                      "Cake",
                      "None",
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList())
              ],
            ),
            RaisedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text("Add to my record"))
          ],
        ),
      ),
    );
  }
}
