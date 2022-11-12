import 'package:flutter/material.dart';
import 'secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final String nama = "Siti Salmah Zakiah";
    TextEditingController textFieldController = TextEditingController();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("Halaman1"),
      ),
      body: Builder(
        builder: (context) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: textFieldController,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "isi disini"),
              ),
              MaterialButton(
                  child: Text("Pergi ke Halman 2"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondRoute(
                                  textFromController: nama,
                                  textFromTextField: textFieldController.text,
                                )));
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
