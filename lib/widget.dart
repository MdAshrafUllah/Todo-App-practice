import 'package:flutter/material.dart';

AppBar appBarDecoration(String title) {
  return AppBar(
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    foregroundColor: Colors.white,
    backgroundColor: Colors.green,
    centerTitle: true,
  );
}

InputDecoration inputDecorationStyle(String hintText) {
  return InputDecoration(
      hintText: hintText,
      border: const OutlineInputBorder(
          borderSide: BorderSide(
        width: 2,
        color: Colors.green,
      )),
      focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
        width: 2,
        color: Colors.green,
      )));
}

ButtonStyle elevatedButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: const EdgeInsets.all(26),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      shape:
          ContinuousRectangleBorder(borderRadius: BorderRadius.circular(10)));
}

DateTime now = DateTime.now();
String formattedDateTime =
    '${now.day.toString().padLeft(2, '0')}/${now.month.toString().padLeft(2, '0')}/${now.year}';

Card listTileStyle(int serialNumber, String toDoList, VoidCallback onDelete) {
  return Card(
    child: ListTile(
      leading: CircleAvatar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 4, 59, 7),
        child: Text('$serialNumber'),
      ),
      title: Text(toDoList),
      subtitle: Text(formattedDateTime),
      trailing: IconButton(
          onPressed: onDelete,
          icon: const Icon(
            Icons.delete,
            color: Colors.red,
          )),
    ),
  );
}
