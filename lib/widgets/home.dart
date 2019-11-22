import 'package:flutter/material.dart';
import 'package:quizz/models/Question.dart';
import 'package:quizz/widgets/custom_text.dart';
import 'page_quizz.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Card(
                  elevation: 10.0,
                  child: new Container(
                    height: MediaQuery.of(context).size.width * 0.8,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: new Image.asset("quizz assets/cover.jpg",
                        fit: BoxFit.cover),
                  ),
                ),
                new RaisedButton(
                  color: Colors.blue,
                  child: new CustomText("Commencer le quizz", factor: 1.5),
                  onPressed: () {
                    Navigator.push(context, new MaterialPageRoute(builder: (context) {
                      return new PageQuizz();
                    }));
                  },
                )
              ],
            )
        )
    );
  }
}