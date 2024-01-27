import 'package:flutter/material.dart';
import 'package:todoapp/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController inputController = TextEditingController();
  List<String> toDoList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarDecoration('Todo App'),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: inputController,
                    cursorColor: Colors.green,
                    decoration: inputDecorationStyle('Input Text'),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (inputController.text != "") {
                      toDoList.add(inputController.text);
                    }
                    setState(() {});
                  },
                  style: elevatedButtonStyle(),
                  child: const Text("Add"),
                )
              ],
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  int serialNumber = index + 1;
                  return listTileStyle(serialNumber, toDoList[index], () {
                    onDeletePressed(index);
                  });
                },
                itemCount: toDoList.length,
              ),
            ))
          ],
        ),
      ),
    );
  }

  void onDeletePressed(int index) {
    setState(() {
      toDoList.removeAt(index);
    });
  }
}
