import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  final String textFromController;
  final String textFromTextField;

  SecondRoute(
      {Key? key,
      required this.textFromController,
      required this.textFromTextField})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Halaman 2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Data dari Controller" + textFromController),
              Text("Data dari TextField" + textFromTextField),
              MaterialButton(
                  child: Text("kembali"),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ],
          ),
        ),
      ),
    );
  }
}
