

import 'package:flutter/material.dart';

import '../generateqecode.dart';


class ExistsPage extends StatefulWidget {
  @override
  Exist createState() => Exist();
}

class Exist extends State<ExistsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color(0xFF6C63FF),
        title: Text("vous etes arrivé à destination "),
      ),
      body: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        title: const Text(
            "ceci est le parking ou vous avez réserver une place , "),
        // content: Container(
        //   width: 400,
        //   height: 100,
        // ),
        actions: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GeneratePage()),
                );
              },
              child: Center(
                  child:
                  const Text("ok", style: TextStyle(fontSize: 20))))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GeneratePage()),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}