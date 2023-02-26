import 'package:flutter/material.dart';
import 'package:quotes/model.dart';

class quo extends StatefulWidget {
  const quo({Key? key}) : super(key: key);

  @override
  State<quo> createState() => _quoState();
}

class _quoState extends State<quo> {
  @override
  Widget build(BuildContext context) {

    List q1 = ModalRoute.of(context)!.settings.arguments as List;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Quotes"),
          centerTitle: true,
        ),
        body: ListView.builder(itemBuilder: (context, index) => con(q1[index] as String),
        itemCount: q1.length,
        )
      ),
    );
  }

  Widget con(String qu)
  {
    return Container(
      height: 80,width: double.infinity,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black),
      ),
      child: Center(child: Text("$qu")),
    );
  }

}
